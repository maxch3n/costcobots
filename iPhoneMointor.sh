#!/bin/bash

#下面的網址可以換成你想Moitor的商品

iphone_pro=`curl -s https://www.costco.com.tw/Electronics/Cell-Phones-Portable-Wifi-Sim-Accessories/Cell-Phones/iPhone-12-Pro-256GB-Gold/p/129956|grep "buyNowButton"|grep disabled|wc -l`

#發Slack通知,需要把你的slack token以及頻道ID替換
if [ "${iphone_pro}" == "0" ]; then
curl -d "token=[Slack Token]&channel=[頻道ID]&text=iPhone_pro有貨了https://reurl.cc/k09mVb&pretty=1" https://slack.com/api/chat.postMessage
fi
