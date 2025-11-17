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

## 插件预览 [![](https://img.shields.io/badge/-固件插件及功能预览-FFFFFF.svg)](#插件预览-)
<details>
<summary><b>&nbsp;X86、R2S、R4S 等软路由插件预览</b></summary>
<br/>
<details>
<summary><b>├── 状态</b></summary>
　├── 概况<br/>
　├── 路由<br/>  
　├── 防火墙<br/>
　├── 系统日志<br/>
　├── 系统进程<br/>
　├── 实时信息<br/>
　├── 蜂窝网络<br/>
　├── WireGuard 状态<br/>
</details>
<details>
<summary><b>├── 系统</b></summary>
　├── 系统<br/>
　├── 管理权<br/>
　├── 软件包<br/>
　├── 启动项<br/>
　├── 计划任务<br/>
　├── 挂载点<br/>
　├── 终端<br/> 
　├── 磁盘管理<br/>
　├── 杂项管理<br/>  
　├── LED 配置<br/>
　├── 风扇控制<br/>
　├── 备份/升级<br/>
　├── 文件传输<br/>
　├── Argon 主题设置<br/>
　└── 重启
</details>
<details>
<summary><b>├── Docker</b></summary>
　├── 配置<br/>
　├── 概述<br/>
　├── 容器<br/>
　├── 镜像<br/>
　├── 网络<br/>
　├── 卷标<br/>
　└── 事件
</details>
<details>
<summary><b>├── 服务</b></summary>
　├── PassWall<br/>
　├── 应用过滤<br/>
　├── Hmoeproxy<br/>
　├── AdGuard Home<br/>
　├── DDNSTO 远程控制<br/>
　├── 易有云文件管理器<br/>
　├── MosDNS<br/>
　├── Lucky<br/>
　├── 动态 DNS<br/>
　├── 网络唤醒<br/>
　├── Nikki<br/>
　├── OpenList<br/>
　├── 网络共享<br/>
　├── SmartDNS 服务器<br/>
　└── UPnP
</details>
<details>
<summary><b>├── 网络存储</b></summary>
　├── 文件浏览器<br/>
　├── 可道云<br/>
　├── NFS 管理<br/>
　├── 微力同步<br/>
　├── Alist 文件列表<br/>
　├── qBittorrent<br/>
　├── USB 打印服务器<br/>
　├── 硬盘休眠<br/>
　├── 挂载 SMB 网络共享<br/>
　├── 网络共享<br/>
　├── FTP 服务器<br/>
　├── Rclone<br/>
　├── Aria2 配置<br/>
　├── miniDLNA<br/>
　└── Transmission
</details>
<details>
<summary><b>├── VPN</b></summary>
　├── N2N v2 VPN<br/>
　├── SoftEther VPN 服务器<br/>
　├── OpenVPN 服务器<br/>
　├── PPTP VPN 服务器<br/>
　├── IPSec VPN 服务器<br/>
　└── ZeroTier
</details>
<details>
<summary><b>├── 网络</b></summary>
　├── 接口<br/>
　├── DHCP/DNS<br/>
　├── 主机名<br/>
　├── IP/MAC 绑定<br/>
　├── 静态路由<br/>
　├── 防火墙<br/>
　├── 诊断<br/>
　├── Socat<br/>
　├── SQM QoS<br/>
　├── 网速控制<br/>
　├── 多线多拨<br/>
　├── 负载均衡<br/>
　└── Turbo ACC 网络加速
</details>
<details>
<summary><b>├── 带宽监控</b></summary>
　├── 显示<br/>
　├── 配置<br/>
　├── 备份<br/>
　├── 网速监控<br/>
　└── 实时流量监测
</details>
　└── <b>退出</b>
</details>
