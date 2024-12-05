#!/bin/bash -xv
# SPDX-FileCopyRightText: 2024 Yuta Ishihara
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### uranai test ###
out=$(echo | ./uranai)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo 45 | ./uranai)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo ひつじ | ./uranai)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo おひつじ座 | ./uranai)
[ "$?" = 0 ] || ng "$LINENO"

out=$(echo 無効な文字列 | ./uranai)
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK

exit "$res"

