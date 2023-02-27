#!/bin/bash
# 検索したい文字列が記載されているファイル
SERCH_FILE='search.txt'

# 検索をかけるファイル
TARGET_FILE='target.txt'

cat ${SERCH_FILE} | while read line
do
  grep "$line" $TARGET_FILE
  if [ $? -eq 0 ] ; then
    echo "↑ Found: [${line}]"
    echo  $line >> 'found.txt'
  else
    # SERCH_FILE_LISTにあるものだけ出力
    echo "Not Found: [${line}]"
    echo  $line >> 'notfound.txt'
  fi
done
