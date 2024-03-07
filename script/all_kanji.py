# -*- coding: utf-8 -*-

# Author: mshio <mshio@users.osdn.me>

__version__ = '0.12'

import argparse
import sys
from fontparser import all_of_kanjis
from listprinter import SimpleListPrinter


def main(font_path, output=sys.stdout):
    kanji_list = all_of_kanjis(font_path)

    p = SimpleListPrinter(out=output, delimiter=0x3001)
    p.output(kanji_list)
    print >>output
    print >>output, "{} char(s)".format(len(kanji_list))

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('font_files', nargs='+', help='path of a font file')

    return parser.parse_args()

if __name__ == '__main__':
    args = parse_args()

    print_title = len(args.font_files) >= 2

    for path in args.font_files:
        if print_title: print "{}:".format(path)
        main(path)
        if print_title and path != args.font_files[-1]: print
