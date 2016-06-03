#!/bin/bash

# pack
if [ ! -d dialectic.cn ]; then
    mkdir dialectic.cn
fi
cp -rf deploy/www dialectic.cn/
cp -rf deploy/blog dialectic.cn/
tar czvf dialectic.cn.tar.gz dialectic.cn/

scp dialectic.cn.tar.gz wyao:~/website/
ssh wyao "sh website/deploy-remote.sh"

rm -rf dialectic.cn
rm dialectic.cn.tar.gz
