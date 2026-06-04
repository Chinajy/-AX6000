#!/bin/bash
# DIY PART1：拉取第三方插件源码，适配ImmortalWrt 24.10
# 删除旧多余源码
rm -rf package/*tmp*

# 1.AdGuardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
# 2.SmartDNS
git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/pymumu/smartdns.git package/smartdns
# 3.OpenClash
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# 4.DiskMan磁盘管理
git clone https://github.com/lisaac/luci-app-diskman.git package/luci-app-diskman
# 5.FileTransfer文件传输
git clone https://github.com/immortalwrt/luci-app-filetransfer.git package/luci-app-filetransfer
# 6.Lucky端口转发
git clone https://github.com/gdy666/luci-app-lucky.git package/luci-app-lucky
# 7.EasyTier异地组网
git clone https://github.com/EasyTier/luci-app-easytier.git package/luci-app-easytier
# 8.网速测试
git clone https://github.com/sirpdboy/luci-app-netspeedtest.git package/luci-app-netspeedtest
# 9.Argon主题（可选）
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
