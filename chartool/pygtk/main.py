#!/usr/bin/env python
# -*- coding:utf-8 -*-

import gtk
import os
import pygtk


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
    def __init__(self, entry_search):
        self.entry_search = entry_search
        self.code = None
        self.char = ''

    def set_next(self):
        en = self.entry_search
        buf = en.get_text().decode('utf-8')
        pos = en.get_position()
        if pos == len(buf): pos = 0
        en.select_region(pos, pos + 1)
        ch = buf[pos:pos + 1]

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


if __name__ == '__main__':
    path = os.path.abspath(os.path.dirname(__file__))
    Controller(os.path.join(path, 'window_main.glade'))
