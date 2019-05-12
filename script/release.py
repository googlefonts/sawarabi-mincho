#!/usr/bin/env python

import StringIO
import all_kanji
import locale
import new_glyphs
import os
import re
import shutil
import sys
import time
import yaml
from listprinter import SimpleListPrinter

class AllKanjiList:
  def __init__(self, fontpath):
    self.fontpath = fontpath
    self.__listbuffer = None
    self.__count = None

  def listbuffer(self):
    if self.__listbuffer is None:
      self.__retrieve()
    return self.__listbuffer

  def count(self):
    if self.__count is None:
      self.__retrieve()
    return self.__count

  def __get_buffer(self):
    out = StringIO.StringIO()
    all_kanji.main(self.fontpath, out)
    buff = out.getvalue()
    out.close()
    return buff

  def __retrieve(self):
    buff = self.__get_buffer()
    pat = re.compile(r'\s([0-9]+)\s+char\(s\)$')
    m = pat.search(buff)
    if m:
      self.__listbuffer = buff[0:m.start(0)]
      self.__count = int(m.group(1))

class NewKanjiList:
  def __init__(self, fontpath, archive):
    self.fontpath = fontpath
    self.archive = archive
    self.__listbuffer = None
    self.__count = None

  def listbuffer(self):
    if self.__listbuffer is None:
      self.__retrieve()
    return self.__listbuffer

  def count(self):
    if self.__count is None:
      self.__retrieve()
    return self.__count

  def __get_buffer(self):
    out = StringIO.StringIO()
    p = SimpleListPrinter(delimiter=0x3001, out=out)
    new_glyphs.print_new_glyph(self.archive, self.fontpath, p)
    buff = out.getvalue()
    out.close()
    return buff

  def __retrieve(self):
    buff = self.__get_buffer()
    pat = re.compile(r'\s([0-9]+)\s+char\(s\)$')
    m = pat.search(buff)
    if m:
      self.__listbuffer = buff[0:m.start(0)]
      self.__count = int(m.group(1))

def print_readme(template_dir, out_dir, language, all_list):
  template_name = 'README-%s-template.txt' % language
  template_file = os.path.join(template_dir, template_name)

  out_file = os.path.join(out_dir, 'README_%s.txt' % language)
  d = {'kanji_count': __l(int(all_list.count())),
       'kanji_list': all_list.listbuffer(),
       'year': time.localtime()[0],
       }
  __print_document(template_file, out_file, d)

def print_releasenote(template_dir, out_dir, language, all_list, new_list):
  template_name = 'NOTE-%s-template.txt' % language
  template_file = os.path.join(template_dir, template_name)

  out_file = os.path.join(out_dir, 'RELEASE-NOTE-%s.txt' % language)
  d = {'kanji_count': __l(int(all_list.count())),
       'new_kanji_count': __l(int(new_list.count())),
       'kanji_list': all_list.listbuffer(),
       'new_kanji_list': new_list.listbuffer(),
       }
  __print_document(template_file, out_file, d)

def __print_document(template_file, out_file, data):
  if not os.path.exists(template_file): return

  out = open(out_file, 'w')
  template_lines = open(template_file, 'rU').readlines()
  for line in template_lines:
    out.write(line % data)
  out.close()

def __l(num):
  return locale.format('%d', num, True)

def prepare_release_dir(font_dir_path, out_path, name, weight):
  for ext in ('ttf', 'otf'):
    src = os.path.join(font_dir_path, '%s-%s.%s' % (name, weight, ext))
    if os.path.exists(src):
      if ext == 'ttf': 
        dest = os.path.join(out_path, name) 
      else:
        dest = os.path.join(out_path, '%s-%s' % (name, ext))
      if not os.path.exists(dest): os.makedirs(dest)
      shutil.copy(src, dest)

class ReleaseConfig:
  def __init__(self, path):
    if not os.path.exists(path):
      raise 'No such file exists: {}'.format(path)
    if not os.path.isfile(path):
      raise 'The specified path is not a file'

    self.conf = yaml.load(open(path).read())
    self.rootdir = os.path.abspath(self.conf['rootdir'])

  def get_workdir(self, style):
    return self.__get_configurated_dir_path('workdir', style)

  def get_archivedir(self, style):
    return self.__get_configurated_dir_path('archivedir', style)

  def bind_style(self, style):
    self.style = style
    self.workdir = self.get_workdir(style)
    self.archivedir = self.get_archivedir(style)

  def __get_configurated_dir_path(self, dirtype, style):
    d = self.conf[dirtype]
    rootpath = d['root'] or ''
    stylepath = d[style]
    return os.path.join(self.rootdir, rootpath, stylepath)

  def get_fontpaths(self, style, weights=None, extensions=None):
    subconf = self.conf['fonts'][style]
    rootpath = subconf['root']
    if weights != None and weights.__class__ != list: 
      weights = [weights]
    weights = weights or subconf['weight'].keys()
    if extensions != None and extensions.__class__ != list: 
      extensions = [extensions]
    extensions = extensions or subconf['extension']
    paths = [os.path.join(self.rootdir, rootpath, \
                            '%s.%s' % (subconf['weight'][key], ext)) \
               for key in weights if key != 'root' \
               for ext in extensions]
    return paths

class FontName:
  def __init__(self, path):
    if not os.path.exists(path): 
      raise Exception('No such file exists: {}'.format(path))
    if not os.path.isfile(path): 
      raise Exception('The specified path is not a file: {}'.format(path))
    self.__setup_items(path)

  def __setup_items(self, path):
    self.dir = os.path.dirname(path)
    self.basename = os.path.basename(path)
    familyname, style, weight = self.basename.split('.')[0].split('-')
    self.name = '%s-%s' % (familyname, style)
    self.familyname = familyname
    self.style = style
    self.weight = weight

if __name__ == '__main__':
  scriptdir = os.path.dirname(sys.argv[0])
  conf = ReleaseConfig(os.path.join(scriptdir, 'release.yml'))

  fontpath = sys.argv[1]
  font = FontName(fontpath)
  conf.bind_style(font.style)

  if not os.path.exists(conf.archivedir) or \
        not os.path.isdir(conf.archivedir): 
    raise Exception('The specified archive directory does not exits')
  if not os.path.exists(conf.workdir): os.makedirs(conf.workdir)

  archlist = os.listdir(conf.archivedir)
  pat = re.compile(r'^%s\-%s\-[0-9]{8}\.tar\.gz$' % \
                     (font.familyname, font.style))
  archfiles = [nm for nm in archlist if pat.match(nm)]
  archfiles.sort()
  archfile = archfiles[-1]

  all_list = AllKanjiList(fontpath)
  new_list = NewKanjiList(fontpath, os.path.join(conf.archivedir, archfile))

  prepare_release_dir(font.dir, conf.workdir, font.name, font.weight)

  templatedir = os.path.join(scriptdir, 'templates', font.style)
  for lang in ['ja', 'en']: 
    for ext in ['ttf', 'otf']:
      if ext == 'ttf':
        dest = os.path.join(conf.workdir, font.name)
      else:
        dest = os.path.join(conf.workdir, '%s-%s' % (font.name, ext))
      if os.path.exists(dest): 
        print_readme(templatedir, dest, lang, all_list)

  for lang in ['ja', 'en', 'de']: 
    print_releasenote(templatedir, conf.workdir, lang, all_list, new_list)
