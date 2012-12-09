# -*- coding: utf-8 -*-

# $Id$
# Author: mshio <mshio@users.sourceforge.jp>

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

__version__ = '0.10'

from types import MethodType
import fontforge
import sys

class KanjiList:
    def __init__(self, file_path):
        self.file_path = file_path
        self.buffer = []

    def convert(self, line):
        try:
            s = unicode(line.rstrip('\r\n'), 'utf-8')
        except:
            sys.exit('[ERROR] %s' % line)
        return s

    def read(self):
        fh = open(self.file_path, 'r')
        for line in fh:
            if line.startswith('#'):
                continue
            for c in self.convert(line):
                self.buffer.append(ord(c))
        fh.close()
        return self.buffer

class FontForgeCharList:
    def __init__(self, font_path):
        self.forge = fontforge.open(font_path)

    def loop(self, method):
        self.proc = MethodType(method, self, FontForgeCharList)
        f = self.forge
        for g in f:
            if g[0] != '.' and f[g].unicode > 0:
                self.proc(f[g])

class ListPrinter:
    def __init__(self, col, out):
        self.col = col
        self.out = out

    def output(self, list):
        col = 0
        n = 0
        for c in list:
            col += 1
            n += 1
            self.out.write(unichr(c).encode('utf-8'))
            if col == self.col:
                col = 0
                self.out.write('\n')
            else:
                self.out.write(' ')
        return n

if __name__ == '__main__':
    forge = FontForgeCharList(sys.argv[1])
    kanji_list = KanjiList(sys.argv[2]).read()

    def remove(self, char):
        for c in kanji_list:
            if char.unicode == c:
                kanji_list.remove(c)
                break

    forge.loop(remove)

    p = ListPrinter(10, sys.stdout)
    count = p.output(kanji_list)
    print
    print "%d char(s)" % count
