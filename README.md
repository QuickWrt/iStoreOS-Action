<p align="center">
  <img width="400px" src="images/openwrt.png" />
</p>

<p align="center">
  <img src="https://img.shields.io/github/downloads/QuickWrt/iStoreOS-Action/total.svg?style=for-the-badge&color=32C955"/>
  <img src="https://img.shields.io/github/stars/QuickWrt/iStoreOS-Action.svg?style=for-the-badge&color=orange"/>
  <img src="https://img.shields.io/github/forks/QuickWrt/iStoreOS-Action.svg?style=for-the-badge&color=ff69b4"/>
  <img src="https://img.shields.io/github/license/QuickWrt/iStoreOS-Action.svg?style=for-the-badge&color=blueviolet"/>
</p>

<p align="center">
  <a href="#readme"><img src="https://img.shields.io/badge/-目录:-696969.svg"></a>
  <a href="#项目说明-"><img src="https://img.shields.io/badge/-项目说明-FFFFFF.svg"></a>
  <a href="#固件特色-"><img src="https://img.shields.io/badge/-固件特色-FFFFFF.svg"></a>
  <a href="#固件下载-"><img src="https://img.shields.io/badge/-固件下载-FFFFFF.svg"></a>
  <a href="#近期更新-"><img src="https://img.shields.io/badge/-近期更新-FFFFFF.svg"></a>
  <a href="#插件预览-"><img src="https://img.shields.io/badge/-插件预览-FFFFFF.svg"></a>
  <a href="#定制固件-"><img src="https://img.shields.io/badge/-定制固件-FFFFFF.svg"></a>
  <a href="#特别提示-"><img src="https://img.shields.io/badge/-特别提示-FFFFFF.svg"></a>
  <a href="#鸣谢-"><img src="https://img.shields.io/badge/-鸣谢-FFFFFF.svg"></a>
</p>

## 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 固件构成：[![Lean](https://img.shields.io/badge/Lede-Lean-ff69b4.svg?style=flat&logo=appveyor)](https://github.com/coolsnowwolf/lede) [![P3TERX](https://img.shields.io/badge/OpenWrt-P3TERX-blueviolet.svg?style=flat&logo=appveyor)](https://github.com/P3TERX/Actions-OpenWrt) [![Flippy](https://img.shields.io/badge/Package-Flippy-orange.svg?style=flat&logo=appveyor)](https://github.com/unifreq/openwrt_packit) [![Haiibo](https://img.shields.io/badge/Build-Haiibo-32C955.svg?style=flat&logo=appveyor)](https://github.com/haiibo/OpenWrt)
- 项目使用 Github Actions 拉取 [istoreos](https://github.com/istoreos/istoreos) 的 Openwrt 源码仓库进行云编译
- 固件默认管理地址：`10.0.0.1` 默认用户：`root` 默认密码：`password`
- 提供适配于 Rockchip 平台、X86 平台设备的 iStoreOS 固件
- 固件集成的所有 ipk 插件全部打包在 Packages 文件中，可以在 [Releases](https://github.com/QuickWrt/iStoreOS-Action/releases) 内进行下载
- 项目编译的固件插件为最新版本，最新版插件可能有 BUG，如果之前使用稳定则无需追新
- 第一次使用请采用全新安装，避免出现升级失败以及其他一些可能的 BUG

## 固件特色 [![](https://img.shields.io/badge/-本项目固件特色-FFFFFF.svg)](#固件特色-)
1. 固件每天定时自动编译，以确保获得最新体验
2. 加入作者私有源，可通过软件包更新一键安装插件
3. 集成 Bandix 流量监控，小白也能轻松看懂系统概况
4. 集成 iStore 应用商店，可根据自己需求自由安装所需插件
5. 集成 Docker 服务，可在 OpenWrt 内自由部署 Docker 应用
6. 集成应用过滤插件，支持游戏、视频、聊天、下载等 APP 过滤
7. 集成在线用户插件，可查看所有在线用户 IP 地址与实时速率等
8. ARMv8 系列固件内置晶晨宝盒，支持在线更新固件及内核等

## 固件下载 [![](https://img.shields.io/badge/-编译状态及下载链接-FFFFFF.svg)](#固件下载-)
点击下表中 [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?style=flat&logo=hack-the-box)](https://github.com/haiibo/OpenWrt/releases) 即可跳转到该设备固件下载页面
| 平台+设备名称 | 固件编译状态 | 配置文件 | 固件下载 |
| :-------------: | :-------------: | :-------------: | :-------------: |
| [![](https://img.shields.io/badge/OpenWrt-X86_64位-32C955.svg?logo=openwrt)](https://github.com/QuickWrt/iStoreOS-Action/blob/main/.github/workflows/X86_64-iStoreOS.yml) | [![](https://github.com/QuickWrt/iStoreOS-Action/actions/workflows/X86_64-iStoreOS.yml/badge.svg)](https://github.com/QuickWrt/iStoreOS-Action/actions/workflows/X86_64-iStoreOS.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/QuickWrt/iStoreOS-Action/blob/main/configs/x86_64.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/QuickWrt/iStoreOS-Action/releases/tag/X86_64) |
| [![](https://img.shields.io/badge/OpenWrt-Rockchip_平台-32C955.svg?logo=openwrt)](https://github.com/haiibo/OpenWrt/blob/main/.github/workflows/Rockchip-OpenWrt.yml) | [![](https://github.com/haiibo/OpenWrt/actions/workflows/Rockchip-OpenWrt.yml/badge.svg)](https://github.com/haiibo/OpenWrt/actions/workflows/Rockchip-OpenWrt.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/haiibo/OpenWrt/blob/main/configs/rockchip.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/haiibo/OpenWrt/releases/tag/Rockchip) |

## 近期更新 [![](https://img.shields.io/badge/-近期固件更新-FFFFFF.svg)](#近期更新-)
🤣努力修复中……
