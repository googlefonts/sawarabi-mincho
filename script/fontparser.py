# -*- coding: utf-8 -*-

# Author: mshio <mshio@users.sourceforge.jp>

__version__ = '0.11'

import fontforge
from types import MethodType


class FontParser:
    """
    An object in order to parse the characters in the specified font.
    """
    def __init__(self, font_path):
        self.forge = fontforge.open(font_path)

    def parse(self, method):
        self.proc = MethodType(method, self, FontParser)
        f = self.forge
        for g in f:
            if g[0] != '.' and f[g].unicode > 0:
                self.proc(f[g])

class FontDiffParser:
    def __init__(self, old_font_path, new_font_path):
        self.font_path = [old_font_path, new_font_path]

    def get_diff(self):
        buf = []
        old = fontforge.open(self.font_path[0])

        def collect(self, glyph_obj):
            if glyph_obj.glyphname not in old:
                buf.append(glyph_obj.unicode)

        FontParser(self.font_path[1]).parse(collect)

        return buf

class KanjiParser:
    def __init__(self, font_path):
        self.font_path = font_path

    def get_list(self):
        buf = []

        def collect(self, glyph):
            code = glyph.unicode
            # roughly
            if code >= 0x4e00 and code <= 0x9fff:
              buf.append(code)

        FontParser(self.font_path).parse(collect)

        return buf

