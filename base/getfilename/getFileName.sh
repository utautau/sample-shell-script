#!/bin/bash

# 自動生成などで事前に名前がわからないファイルのファイル名を取得する方法
TARGET_DIR='.'
FILE_NAME=`find $TARGET_DIR -name "*.txt" | rev | cut -d "/" -f 1 | rev`
echo ${FILE_NAME}