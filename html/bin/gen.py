import argparse
import re
import lxml.html as html
import markdown

class Section:
    def __init__(self, name: str):
        self._name = name
        self._buffer = []
        self._html = None

    def append(self, line: str):
        self._buffer.append(line)

    @property
    def buffer(self) -> str:
        if not self._html:
            buf = "\n".join(self._buffer)
            self._html = markdown.markdown(buf)

        return self._html

    @property
    def name(self) -> str:
        return self._name

class Document:
    def __init__(self):
        self._props = {}
        self._items = {}

    @property
    def property(self) -> dict:
        return self._props

    def __getitem__(self, key: str) -> dict:
        return self._items[key]

    def __setitem__(self, key: str, value: str):
        self._items[key] = value

    def __str__(self) -> str:
        d = dict({'property': self._props}, **self._items)
        return str(d)

class Parser:
    def __init__(self, clazz, rules = {}):
        self._item_class = clazz
        self._doc = Document()
        self._item = None
        self.rules = {
            re.compile(v): getattr(self, k) for k, v in rules.items()
        }

    def parse(self, lines):
        for line in lines:
            self._parse_line(line)
        self.flash()

        return self._doc

    def flash(self):
        if self._item:
            self._doc[self._item.name] = self._item.buffer

    def on_property(self, buf: tuple):
        key, value = buf
        self._doc.property[key] = value

    def on_section_title(self, value: tuple):
        title = value[0]
        self.flash()
        self._item = self._item_class(title)

    def on_content(self, value: tuple):
        content = value[0]
        if self._item:
            self._item.append(content)

    def _parse_line(self, line: str):
        def apply(k: str, v: str):
            m = k.fullmatch(line)
            return v(m.groups()) if m else None

        for k, v in self.rules.items():
            apply(k, v)

rules = {
    'on_section_title': r'%\s*(.+?)\s*%*\n?',
    'on_property':      r'=\((.+?)\)\s*(.+?)\s*=*\n?',
    'on_content':       r'([^%=].*)\n?',
}

def convert_sections(lines: list):
    p = Parser(Section).parse(lines)
    sections = p.buffer
    return sections

def parse_args():
    ps = argparse.ArgumentParser()
    ps.add_argument("source")
    ps.add_argument("-o", dest="out_path", default="out.html")
    ps.add_argument("-t", dest="template_path", default="template.html")

    return ps.parse_args()

if __name__ == "__main__":
    args = parse_args()

    with open(args.source) as f:
        lines = f.readlines()
    doc = Parser(Section, rules).parse(lines)

    temp = html.parse(args.template_path)
    temp.getroot().attrib['lang'] = doc.property['lang']
    temp.xpath('//title')[0].text = doc.property['title']
    img = temp.xpath('//div[contains(@class, "logo")]/img')[0]
    img.attrib['alt'] = doc.property['title']
    langname = temp.xpath('//div[contains(@id, "current-lang")]/span')[0]
    langname.text = doc.property['language']

    for sec in temp.xpath('//section'):
        id = sec.attrib['id']
        fg = html.fromstring(doc[id])
        sec.append(fg)

    for a in temp.xpath('//a'): a.attrib['target'] = '_blank'

    with open(args.out_path, 'w') as f:
        f.write(html.tostring(temp, encoding='utf-8').decode())
