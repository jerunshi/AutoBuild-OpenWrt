#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 基本不需要添加啥插件了,我搜集了各位大神的插件都集成一个软件包直接打入源码里面了
# 要了解增加了什么东西，就到我的专用软件包里面看看看吧，如果还是没有你需要的插件，请不要一下子就拉取别人的插件包
# 相同的文件都拉一起，因为有一些可能还是其他大神修改过的容易造成编译错误的
# 想要什么插件就单独的拉取什么插件就好，或者告诉我，我把插件放我的插件包就行了
# 软件包地址：https://github.com/281677160/openwrt-package
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

#新版去广告插件
svn export --force https://github.com/project-lede/luci-app-godproxy package/diy/luci-app-godproxy

#内网测速插件
#svn export --force https://github.com/sirpdboy/NetSpeedTest package/diy/netspeedtest

#DDNS.to内网穿透插件
svn export --force https://github.com/linkease/ddnsto-openwrt package/network/services

#bypass插件
git clone https://github.com/garypang13/luci-app-bypass.git

#内网测速插件
git clone https://github.com/sirpdboy/NetSpeedTest package/NetSpeedTest
