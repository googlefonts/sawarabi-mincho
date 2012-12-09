#!/usr/bin/env python
# -*- coding: utf-8 -*-

import fontforge
import os
import sys
import tarfile

def get_fontfilename_in_archive(string):
  name = string.split('/')[-1]
  p = name.split('-')
  family = p[0]
  type = p[1]

  return '%s-%s/%s-%s-medium.ttf' % (family, type, family, type)

def get_glyph_list(fontfile):
  ret = []
  font = fontforge.open(fontfile)
  for g in font:
    glyph = font[g]
    ret.append(glyph.unicode)
  font.close()
  return ret

def remove_dep_item(list1, list2):
  for l in list1:
    list2.remove(l)

  return list2

def print_result_list(list):
  out = sys.stdout
  col = 0
  dec = 0
  for n in list:
    if n < 0 or n > sys.maxunicode:
      continue
    if col != 0:
      out.write('、')
    col = col + 1
    out.write(unichr(n).encode('utf-8'))
    if col == 10:
      col = 0
      dec = dec + 1
      out.write('\n')
  if col != 0:
    out.write('\n')
  out.write('%d chars\n' % (dec * 10 + col))


if __name__ == '__main__':
  if len(sys.argv) != 3:
    print 'usage: %s tar.gz-file font-file' % sys.argv[0]
    sys.exit(1)

  archive = sys.argv[1]
  newfile = sys.argv[2]

  fontfile = get_fontfilename_in_archive(archive)
  f = tarfile.open(archive, 'r:gz')
  f.extract(fontfile)

  oldglyphs = get_glyph_list(fontfile)
  newglyphs = get_glyph_list(newfile)

  result = remove_dep_item(oldglyphs, newglyphs)
  print_result_list(result)

  os.remove(fontfile)
  os.rmdir(fontfile.split('/')[0])
