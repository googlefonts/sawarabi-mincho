# -*- coding: utf-8 -*-

# Author: mshio <mshio@users.sourceforge.jp>

__version__ = '0.11'

import sys
from fontparser import KanjiParser
from listprinter import SimpleListPrinter


def main(font_path, output=sys.stdout):
    parser = KanjiParser(font_path)
    kanji_list = parser.get_list()

    p = SimpleListPrinter(out=output, delimiter=0x3001)
    p.output(kanji_list)
    print >>output
    print >>output, "%d char(s)" % len(kanji_list)

if __name__ == '__main__':
    if len(sys.argv) <= 1:
        print 'usage: %s font-file' % sys.argv[0]
        sys.exit(1)

    print_title = len(sys.argv) >= 3

    for path in sys.argv:
        if path == sys.argv[0]: continue

        if print_title: print "%s:" % path
        main(path)
        if print_title and path != sys.argv[-1]: print

