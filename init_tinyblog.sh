#!/bin/bash

bin=`dirname $0`
bin=`cd $bin; pwd`

cd $bin
echo "当前工作目录: $bin"
# 初始化 tinyblog 系统
echo "初始化 tinyblog 系统..."
# 判断data/settings.json是否存在，不存在则cp
if [ ! -f data/settings.json ]; then
    echo "警告: data/settings.json 不存在，将被创建。"
    cp data/settings.json.example data/settings.json
else
    echo "提示: data/settings.json 已存在，跳过创建。"
fi
# 判断data/keys.json是否存在，不存在则cp
if [ ! -f data/keys.json ]; then
    echo "警告: data/keys.json 不存在，将被创建。"
    cp data/keys.json.example data/keys.json
else
    echo "提示: data/keys.json 已存在，跳过创建。"  
fi

# 判断data/articles/metadata.json是否存在，不存在则cp
if [ ! -f data/articles/metadata.json ]; then
    echo "警告: data/articles/metadata.json 不存在，将被创建。"
    cp data/articles/metadata.json.example data/articles/metadata.json
else
    echo "提示: data/articles/metadata.json 已存在，跳过创建。"     
fi
# 判断data/about.md是否存在，不存在则cp
if [ ! -f data/about.md ]; then
    echo "警告: data/about.md 不存在，将被创建。"
    cp data/about.md.example data/about.md
else
    echo "提示: data/about.md 已存在，跳过创建。"       
else
    echo "提示: data/about.md 已存在，跳过创建。"
fi
# 判断data/privacy.md是否存在，不存在则cp
if [ ! -f data/privacy.md ]; then
    echo "警告: data/privacy.md 不存在，将被创建。"
    cp data/privacy.md.example data/privacy.md
else
    echo "提示: data/privacy.md 已存在，跳过创建。"    
fi
echo "初始化完成。"



