#!/usr/bin/env python
# -*- coding: utf-8 -*-

# $Id$
# Author: mshio <mshio@users.osdn.me>

__version__ = '0.12'

import argparse
import os
import tarfile
from fontparser import font_diff
from listprinter import SimpleListPrinter


def print_new_glyph(archive, newfile, printer=None):
  def fontfilepath_in_archive(archive_path, weight, ext='ttf'):
    file_name = archive_path.split('/')[-1]
    family_name, type_name, _ = file_name.split('-', 2)

    return '{family}-{type_name}/{family}-{type_name}-{weight}.{ext}'.format(
      family=family_name, type_name=type_name, weight=weight, ext=ext
    )

  def expand_archive(archive_path, fontfile_path):
    f = tarfile.open(archive_path, 'r:gz')
    f.extract(fontfile_path)

  def clean_up(fontfile_path):
    os.remove(fontfile_path)
    os.rmdir(fontfile_path.split('/')[0])

  def main(archive, newfile, printer):
    font_path = fontfilepath_in_archive(archive, 'medium')
    expand_archive(archive, font_path)

    diff = font_diff(font_path, newfile)
    clean_up(font_path)

    p = printer
    if p == None: p = SimpleListPrinter(delimiter=0x3001)
    p.output(diff)
    print >>p.out
    print >>p.out, "%d char(s)" % len(diff)

  main(archive, newfile, printer)

def parse_args():
  parser = argparse.ArgumentParser()
  parser.add_argument('archive_file', help='path of an archived font file')
  parser.add_argument('font_file', help='path of a font file')

  return parser.parse_args()

if __name__ == '__main__':
  args = parse_args()
  print_new_glyph(args.archive_file, args.font_file)
