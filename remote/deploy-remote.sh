#!/bin/bash

cd website
tar xzvf dialectic.cn.tar.gz
sudo -S rm -rf /usr/share/nginx/www < passwd
sudo -S cp -rf dialectic.cn/www /usr/share/nginx/ < passwd

sudo -S rm -rf /usr/share/nginx/blog < passwd
sudo -S cp -rf dialectic.cn/blog /usr/share/nginx/ < passwd
rm -rf dialectic.cn
rm dialectic.cn.tar.gz
