#!/bin/bash

# 対象のCSVファイルの読み込み
# この場合、対象のCSVファイルの最終行には改行を入れる必要がある
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
