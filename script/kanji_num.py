# -*- conding: utf-8 -*-

__version__ = '0.1'

import sys
from fontparser import KanjiParser

def get_kanjilist():
    def parse_source(filepath):
        fh = open(filepath, 'r')
        chars = [[ord(c) for c in unicode(line.rstrip('\r\n'), 'utf-8')
                  if not line.startswith('#')] for line in fh]
        fh.close()
        return reduce(lambda x, y: x + y, chars)

    def parse_sources(filepaths):
        chars = [parse_source(path) for path in filepaths]
        return reduce(lambda x, y: x + y, chars)

    sources = {'kyouikuKanji': ['data/grade-%d.txt' % n for n in range(1, 7)]}
    sources.update({
        ('level%d' % n): ['data/level-%ds.txt' % n] for n in range(1, 5)
    })
    return {k: parse_sources(v) for k, v in sources.items()}

if __name__ == '__main__':
    if len(sys.argv) <= 1:
        print 'usage: %s font-file' % sys.argv[0]
        sys.exit(1)

    all_kanjis = KanjiParser(sys.argv[1]).get_list()
    kanjilist = get_kanjilist()

    for k, v in kanjilist.items():
        count = len(set(v) & set(all_kanjis))
        print '%(key)s, %(num)d' % {'key': k, 'num': count}
