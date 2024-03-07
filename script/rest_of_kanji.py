#!/usr/bin/env python
# -*- coding: utf-8 -*-

# $Id$
# Author: mshio <mshio@users.osdn.me>

"""
概要
---------------------
このスクリプトは、指定された漢字のうち、フォントファイルに含まれて
いない漢字を表示し、最後にその字数を表示するものです。

使い方
---------------------
必要な引数は2つです。
最初の引数には、検査対象のフォントファイル（TTF など）を指定します。
次の引数には、検査したい漢字を書き連ねたテキストファイル（便宜上これを
漢字ファイルと呼びます）のパスを指定します。

漢字ファイルは utf-8 で書かれている必要があります。
なお、漢字ファイルには改行を含めることができます。また、`#'から始まる
行はコメントとして扱われ、読み飛ばされます。

このスクリプトは、渡された漢字ファイルを読み取り、そのリストの中から、
フォントファイルに含まれていない漢字を抽出して出力します。

必要事項
---------------------
このスクリプトを実行するには、FontForge が必要です。
"""

__version__ = '0.12'

import argparse
import sys
from fontparser import filter_glyphs
from listprinter import SimpleListPrinter

def kanji_list(file_path):
    def convert(line):
        try:
            s = unicode(line.rstrip('\r\n'), 'utf-8')
        except:
            sys.exit('[ERROR] %s' % line)
        return s

    buf = []
    with open(file_path, 'r') as file:
        for line in file:
            if line.startswith('#'):
                continue
            for c in convert(line):
                buf.append(ord(c))
    return buf

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('font_file', help='path of a font file')
    parser.add_argument('kanji_file', help='path of a kanji file')

    return parser.parse_args()

if __name__ == '__main__':
    args = parse_args()
    kanjis = kanji_list(args.kanji_file)

    def remove(char):
        code = next(iter(filter(lambda c: char.unicode == c, kanjis)), False)
        if code:
            kanjis.remove(code)

    filter_glyphs(args.font_file, remove)

    p = SimpleListPrinter(delimiter=0x3001)
    p.output(kanjis)
    print
    print "%d char(s)" % len(kanjis)
