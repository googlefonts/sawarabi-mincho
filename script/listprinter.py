# -*- coding: utf-8 -*-

# Author: mshio <mshio@users.sourceforge.jp>

__version__ = '0.11'

import sys

class SimpleListPrinter:
    def __init__(self, col=10, out=sys.stdout, delimiter=' '):
        self.col = col
        self.out = out
        self.delimiter = self._get_delimiter(delimiter)

    def output(self, array):
        n = 0
        size = len(array)
        for c in array:
            n += 1
            self.out.write(unichr(c).encode('utf-8'))
            delimiter = self.delimiter if n % self.col != 0 and n < size else '\n'
            self.out.write(delimiter)

    def _get_delimiter(self, delimiter):
        ch = None
        if type(delimiter) == int:
            ch = unichr(delimiter).encode('utf-8')
        elif type(delimiter) == unicode:
            ch = delimiter.encode('utf-8')
        elif type(delimiter) == str:
            ch = delimiter
        return ch
