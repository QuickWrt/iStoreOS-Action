#!/bin/bash

# 修改固件名称
sed -i '/^VERSION_DIST:=$(if /c\VERSION_DIST:=$(if $(VERSION_DIST),$(VERSION_DIST),ZeroWrt)' include/version.mk
sed -i '/^VERSION_MANUFACTURER:=$(if /c\VERSION_MANUFACTURER:=$(if $(VERSION_MANUFACTURER),$(VERSION_MANUFACTURER),ZeroWrt)' include/version.mk

# 修改默认IP
sed -i 's/"192\.168\.100\.1"/"10.0.0.1"/g' package/istoreos-files/Makefile

# 修改源地址
sed -i 's/src\/gz istoreos_/src\/gz zerowrt_/g' package/istoreos-files/Makefile

# 修改主机名
sed -i 's/ucidef_set_hostname "iStoreOS"/ucidef_set_hostname "ZeroWrt"/' package/istoreos-files/files/etc/board.d/10_system

# OpenWrt 默认的启动横幅文件
cp -f $GITHUB_WORKSPACE/scripts/banner package/base-files/files/etc/banner

# 更改 Argon 主题背景
cp -f $GITHUB_WORKSPACE/images/bg1.jpg feeds/third/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg

# 私有源密钥文件
curl -Os https://opkg.kejizero.xyz/key-build.pub && tar zxf key.tar.gz && rm -f key.tar.gz

# 修复 Rust 错误
sed -i 's/ci-llvm=true/ci-llvm=false/g' feeds/packages/lang/rust/Makefile

# TTYD
sed -i 's/services/system/g' feeds/luci/applications/luci-app-ttyd/root/usr/share/luci/menu.d/luci-app-ttyd.json
sed -i '3 a\\t\t"order": 50,' feeds/luci/applications/luci-app-ttyd/root/usr/share/luci/menu.d/luci-app-ttyd.json
sed -i 's/procd_set_param stdout 1/procd_set_param stdout 0/g' feeds/packages/utils/ttyd/files/ttyd.init
sed -i 's/procd_set_param stderr 1/procd_set_param stderr 0/g' feeds/packages/utils/ttyd/files/ttyd.init

# Custom firmware version and author metadata
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='ZeroWrt-$(date +%Y%m%d)'/g"  package/base-files/files/etc/openwrt_release
sed -i "s/DISTRIB_REVISION='*.*'/DISTRIB_REVISION=' By OPPEN321'/g" package/base-files/files/etc/openwrt_release
sed -i "s|^OPENWRT_RELEASE=\".*\"|OPENWRT_RELEASE=\"ZeroWrt 标准版 @R$(date +%Y%m%d) BY OPPEN321\"|" package/base-files/files/usr/lib/os-release

# Git稀疏克隆，只克隆指定目录到本地
function git_sparse_clone() {
  branch="$1" repourl="$2" && shift 2
  git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
  repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
  cd $repodir && git sparse-checkout set $@
  mv -f $@ ../package
  cd .. && rm -rf $repodir
}

# Go 1.25
rm -rf feeds/packages/lang/golang
git clone --depth=1 https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang

# SSRP & Passwall
rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
git clone https://github.com/sbwml/openwrt_helloworld package/new/helloworld -b v5

# OpenList 
git clone --depth=1 https://github.com/sbwml/luci-app-openlist2 package/openlist

# Mosdns
git clone --depth=1 -b v5 https://github.com/sbwml/luci-app-mosdns package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Adguardhome
git clone --depth=1 https://github.com/sirpdboy/luci-app-adguardhome package/luci-app-adguardhome

# Lucky
git clone --depth=1 https://github.com/gdy666/luci-app-lucky package/luci-app-lucky

# 流量监控
git clone --depth=1 https://github.com/timsaya/luci-app-bandix package/luci-app-bandix
git clone --depth=1 https://github.com/timsaya/openwrt-bandix package/openwrt-bandix

./scripts/feeds update -a
./scripts/feeds install -a
