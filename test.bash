#!/bin/bash 

ng () {
	echo ${1}行目がくさいよ
	res=1
}

res=0

### 正常位 ###
out=$(seq おっぱい | ./plus)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### 間違位 ###  
out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
