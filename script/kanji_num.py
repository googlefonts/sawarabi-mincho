# -*- conding: utf-8 -*-

# Author: mshio <mshio@users.osdn.me>

__version__ = '0.2'

import argparse
from fontparser import all_of_kanjis

def get_kanjilist():
    def parse_source(filepath):
        with open(filepath, 'r') as fh:
            chars = [[ord(c) for c in unicode(line.rstrip('\r\n'), 'utf-8')
                      if not line.startswith('#')] for line in fh]
        return reduce(lambda x, y: x + y, chars)

    def parse_sources(filepaths):
        chars = [parse_source(path) for path in filepaths]
        return reduce(lambda x, y: x + y, chars)

    sources = {'kyouikuKanji': ['data/grade-%d.txt' % n for n in range(1, 7)]}
    sources.update({
        ('level%d' % n): ['data/level-%ds.txt' % n] for n in range(1, 5)
    })
    return {k: parse_sources(v) for k, v in sources.items()}

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('font_file', help='path of a font file')

    return parser.parse_args()

if __name__ == '__main__':
    args = parse_args()

    all_kanjis = all_of_kanjis(args.font_file)
    kanjilist = get_kanjilist()

    for k, v in kanjilist.items():
        count = len(set(v) & set(all_kanjis))
        print '{key}, {num}'.format(key=k, num=count)
