#!/bin/bash

#下面網址可以替換成想要監控價格的商品

price=`curl -Ls https://www.costco.com.tw/Electronics/Televisions/70-Above/PHILIPS-86-4K-Ultra-Monitor-With-Tuner-Box-86PUH8504/p/125610 |grep product:price:amount |sed 's/.*content="//'|sed 's/".*//'`;

#下面商品名稱可以更換一下，範例是86吋電視
curl -d "token=[Your slack token]&channel=[Your channel ID]&text=86吋電視價格：$price&pretty=1" https://slack.com/api/chat.postMessage
