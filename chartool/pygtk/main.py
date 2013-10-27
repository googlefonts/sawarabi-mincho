#!/usr/bin/env python
# -*- coding:utf-8 -*-

import gtk
import os
import pygtk
import re


class Controller:
    def __init__(self, glade_file_path):
        builder = gtk.Builder()
        builder.add_from_file(glade_file_path)
        builder.connect_signals(self)

        self.entries = dict([(nm, builder.get_object("entry_%s" % nm)) \
                                 for nm in ['search', 'code', 'name']])
        self.search_action = SearchAction(self.entries['search'])
        self.label_char = builder.get_object('label_char')
        self.menu_label_char = builder.get_object('menu_label_char')
        self.font_name = None
        self.font_dialog = builder.get_object('fontselectiondialog')
        self.window = builder.get_object('window_main')
        self.window.show()

        gtk.main()

    def end_application(self, widget, data=None):
        gtk.main_quit()
        return False

    def on_button_search_clicked(self, widget, data=None):
        a = self.search_action
        a.set_next()
        a.put_code(self.entries['code'])
        a.put_char(self.label_char, self.font_name)

        return False

    def on_entry_search_activate(self, widget, data=None):
        self.on_button_search_clicked(widget, data)

        return False

    def on_label_char_button_press_event(self, widget, event=None):
        if event.button == 3:
            self.menu_label_char.popup(None, None, None, event.button, event.time)
            return True
        return False

    def on_menuitem_font_activate(self, widget, event=None):
        self.font_dialog.show()

        return False

    def on_fontsel_cancel_button_clicked(self, widget, data=None):
        self.font_dialog.hide()

        return False

    def on_fontsel_ok_button_clicked(self, widget, data=None):
        self.font_name = self.font_dialog.get_font_name()
        self.font_dialog.hide()
        self.search_action.put_char(self.label_char, self.font_name)

        return False


class SearchAction:
    re_hex = re.compile(r"[0-9a-fA-F]")

    def __init__(self, entry_search):
        self.entry_search = entry_search
        self.char_util = CharUtil()
        self.code = None
        self.char = ''

    def set_next(self):
        en = self.entry_search
        buf = en.get_text().decode('utf-8')
        if len(buf) == 0: return

        pos = en.get_position()
        if pos == len(buf): pos = 0
        region = self.get_target_region(buf, pos)
        target = buf[region[0]:region[1]]
        en.select_region(region[0], region[1])
        ch = self.char_util.get_unichar(target)

        self.code = hex(ord(ch))
        self.char = ch

    def put_code(self, entry):
        if not self.code: return

        entry.set_text(self.code)

    def put_char(self, label, font_name):
        if not self.char: return
        if not font_name: font_name = '80'

        mu = '<span font="%s">%s</span>' % (font_name, self.char)
        label.set_markup(mu)

    def get_target_region(self, text, pos):
        ch = text[pos:pos + 1]
        rlen = 0
        llen = 0
        while rlen <= 4 and self.char_util.is_hex_char(ch):
            rlen += 1
            if pos + rlen >= len(text): break
            ch = text[(pos + rlen):(pos + rlen + 1)]
        if rlen >= 1 and rlen < 5:
            while rlen + llen <= 4 and pos - llen > 0:
                ch = text[(pos - llen - 1):(pos - llen)]
                if not self.char_util.is_hex_char(ch): break
                llen += 1
        ret = (pos - llen, pos + rlen)
        if ret == (pos, pos): return (pos, pos + 1)
        return ret

class CharUtil:
    def is_hex_char(self, char):
        return (char >= '0' and char <= '9') or \
            (char >= 'a' and char <= 'f') or \
            (char >= 'A' and char <= 'F')

    def get_unichar(self, buf):
        if len(buf) <= 1: return buf

        return unichr(int(buf, 16))


if __name__ == '__main__':
    path = os.path.abspath(os.path.dirname(__file__))
    Controller(os.path.join(path, 'window_main.glade'))
