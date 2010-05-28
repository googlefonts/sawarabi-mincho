/*
 * Copyright (C) 2010, mshio <mshio@users.sourceforge.jp>
 *
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * ---
 * Require JDK 1.5 (or later)
 */
package jp.sourceforge.sawarabifonts.chartool;

import java.util.logging.Logger;

public class GuiController {
	private final Main main;
	private GlyphViewer glyphViewer = null;
	private SearchPanel searchPanel = null;
	private PropertyPanel propertyPanel = null;

	public GuiController(Main main) {
		this.main = main;
	}

	public void setGlyphViewer(GlyphViewer g) {
		this.glyphViewer = g;
	}

	public void setPropertyPanel(PropertyPanel p) {
		this.propertyPanel = p;
	}

	public void setSearchPanel(SearchPanel s) {
		this.searchPanel = s;
	}

	private boolean isHexChar(char ch) {
		return (ch >= '0' && ch <= '9') || (ch >= 'a' && ch <= 'f') ||
				(ch >= 'A' && ch <= 'F');
	}

	private boolean foundByCode(String searchText, int pos) {
		char ch = searchText.charAt(pos);
		int len = searchText.length();
		if (isHexChar(ch)) {
			boolean four = false;
			int p = pos;
			for (;;) {
				four = p - pos >= 3;
				if (p - pos == 4) {
					if (showGlyphByCode(searchText, pos, pos + 5) || 
							(four && showGlyphByCode(searchText, pos, pos + 4))) {
						return true;
					}
				} else if (p + 1 < len && isHexChar(searchText.charAt(p + 1))) {
					p++;
				} else {
					break;
				}
			}
			int b = pos;
			for (;;) {
				four = p - b >= 3;
				if (p - b == 4) {
					if (showGlyphByCode(searchText, b, b + 5) ||
							(four && showGlyphByCode(searchText, b + 1, b + 5))) {
						return true;
					}
				} else if (b - 1 >= 0 && isHexChar(searchText.charAt(b - 1))) {
					b--; 
				} else {
					if (four) { return showGlyphByCode(searchText, b, b + 4); }
					break;
				}
			}
		}
		return false;
	}

	public void onSearch(String searchText, int pos, String selected) {
		if (searchText.length() == 0) { return; }
		if (pos >= searchText.length()) { pos = 0; }

		if (! foundByCode(searchText, pos)) {
			String s = searchText.substring(pos);
			if (s.length() == 0) { s = searchText; }
			try {
				showGlyph(main.searchChar(s));
				boolean h = Character.isHighSurrogate(s.charAt(0));
				searchPanel.setCaretPosition(pos, h ? 2 : 1);
			} catch (InvalidSearchStringException e) {
				e.printStackTrace();
				Logger.getLogger(Main.LOGNAME).warning(e.getMessage());
			}
		}
	}

	private boolean showGlyphByCode(String text, int pos0, int pos1) {
		boolean ret = false;
		int c = Integer.parseInt(text.substring(pos0, pos1), 16);
		try {
			CharProperty p = main.searchChar(c);
			int len = p.character.length();
			if ((len >= 2 && Character.isHighSurrogate(p.character.charAt(0)) &&
					Character.isLowSurrogate(p.character.charAt(1))) || len <= 1) {
				showGlyph(main.searchChar(c));
				searchPanel.setCaretPosition(pos0, pos1 - pos0);
				ret = true;
			}
		} catch (InvalidSearchStringException e) {
			e.printStackTrace();
			Logger.getLogger(Main.LOGNAME).warning(e.getMessage());
		}
		return ret;
	}

	private void showGlyph(CharProperty cp) {
		if (cp != null) {
			glyphViewer.setText(cp.character);
			propertyPanel.setCode(cp.code);
		}
	}
}
