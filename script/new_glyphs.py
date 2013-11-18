#!/usr/bin/env python
# -*- coding: utf-8 -*-

# $Id$
# Author: mshio <mshio@users.sourceforge.jp>

__version__ = '0.11'

import os
import sys
import tarfile
from fontparser import FontDiffParser
from listprinter import SimpleListPrinter


def print_new_glyph(archive, newfile, printer=None):
  def fontfilepath_in_archive(archive_path, weight, ext='ttf'):
    filenm = archive_path.split('/')[-1]
    p = filenm.split('-')
    family_name = p[0]
    type_name = p[1]

    return '%s-%s/%s-%s-%s.%s' % (family_name, type_name,
                                  family_name, type_name, weight, ext)

  def expand_archive(archive_path, fontfile_path):
    f = tarfile.open(archive_path, 'r:gz')
    f.extract(fontfile_path)

  def clean_up(fontfile_path):
    os.remove(fontfile_path)
    os.rmdir(fontfile_path.split('/')[0])

  def main(archive, newfile, printer):
    font_path = fontfilepath_in_archive(archive, 'medium')
    expand_archive(archive, font_path)

    parser = FontDiffParser(font_path, newfile)
    diff = parser.get_diff()
    clean_up(font_path)

    p = printer
    if p == None: p = SimpleListPrinter(delimiter=0x3001)
    p.output(diff)
    print >>p.out
    print >>p.out, "%d char(s)" % len(diff)

  main(archive, newfile, printer)

if __name__ == '__main__':
  if len(sys.argv) != 3:
    print 'usage: %s tar.gz-file font-file' % sys.argv[0]
    sys.exit(1)

  archive = sys.argv[1]
  newfile = sys.argv[2]

  print_new_glyph(archive, newfile)
