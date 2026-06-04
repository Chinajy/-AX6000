#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# OpenWrt DIY script part 2 (After Update feeds)

# Modify default IP(按需开启，默认192.168.1.1)
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

## 删除重复app-filter
rm -rf feeds/packages/net/open-app-filter

## OpenClash Meta内核自动下载（arm64适配MT7986）
curl -sL -m 30 --retry 2 https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-arm64.tar.gz -o /tmp/clash.tar.gz
tar zxvf /tmp/clash.tar.gz -C /tmp >/dev/null 2>&1
chmod +x /tmp/clash >/dev/null 2>&1
mkdir -p feeds/luci/applications/luci-app-openclash/root/etc/openclash/core
mv /tmp/clash feeds/luci/applications/luci-app-openclash/root/etc/openclash/core/clash_meta >/dev/null 2>&1
rm -rf /tmp/clash.tar.gz >/dev/null 2>&1

## MT7986A CPU频率2.0GHz（适配RE-CP-03）
sed -i '/"mediatek"\/\*|\"mvebu"\/\*/{n; s/.*/\tcpu_freq="2.0GHz" ;;/}' package/emortal/autocore/files/generic/cpuinfo
