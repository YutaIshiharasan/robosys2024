#!/usr/bin/python3
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda 　　　　　
# SPDX-License-Identifier: BSD-3-Clause

import random
import sys

seizas = [
    "おひつじ座", "おうし座", "ふたご座", "かに座", "しし座", "おとめ座",
    "てんびん座", "さそり座", "いて座", "やぎ座", "みずがめ座", "うお座"
]

unkos = ["大吉", "中吉", "小吉", "吉", "末吉", "凶", "大凶"]
weights = [10, 20, 30, 15, 15, 8, 2]

seiza = sys.stdin
   
    seiza in seizas:
    unko = random.choices(unkos, weights)[0]
    print(f"{seiza}の運勢: {unko}")




