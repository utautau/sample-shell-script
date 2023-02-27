#!/bin/bash

# 対象のCSVファイルの指定
# 注意としては、このやり方だと対象のCSVファイルの最終行に1行分改行を入れる必要がある
TARGET_FILE='sample.csv'

cat ${TARGET_FILE} | while read line
do
  # 対象行の全てを出力
  echo ${line}

  # 第1項目を取得
  FIRST_COLUME=`/bin/echo -n ${line} | cut -d ',' -f 1`
  echo "FIRST_COLUME = ${FIRST_COLUME}"

  # 第2項目を取得
  SECOND_COLUME=`/bin/echo -n ${line} | cut -d ',' -f 2`
  echo "SECOND_COLUME = ${SECOND_COLUME}"
done
