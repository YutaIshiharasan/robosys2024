#!/bin/bash

ng () {
	echo ${1}行目がくさいよ
	res=1
}

res=0
a=金子
[ "$a" = 金玉 ] || ng "$LINENO"
[ "$a" = 金子 ] || ng "$LINENO"

exit $res
