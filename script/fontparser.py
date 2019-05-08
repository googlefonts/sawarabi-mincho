# -*- coding: utf-8 -*-

# Author: mshio <mshio@users.osdn.me>

__version__ = '0.12'

import fontforge

def filter_glyphs(font_path, method):
    forge = fontforge.open(font_path)
    array = [method(forge[g]) for g in forge if g[0] is not '.' and forge[g].unicode > 0]
    return [x for x in array if x]

def font_diff(old_font_path, new_font_path):
    old = fontforge.open(old_font_path)
    return filter_glyphs(new_font_path, lambda g: g.unicode if g.glyphname not in old else None)

def all_of_kanjis(font_path):
    return filter_glyphs(font_path, lambda g: g.unicode if 0x4e00 <= g.unicode <= 0x9fff else None)
