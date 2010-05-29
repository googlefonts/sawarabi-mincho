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

import java.awt.Dimension;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.event.ActionEvent;
import java.io.IOException;
import java.util.logging.Logger;

import javax.swing.JMenu;
import javax.swing.JPopupMenu;
import javax.swing.JTextField;
import javax.swing.border.CompoundBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.border.EtchedBorder;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;
import javax.swing.event.MenuEvent;
import javax.swing.event.MenuListener;
import javax.swing.text.TextAction;

public class GlyphViewer extends JTextField {
	private static final long serialVersionUID = 5811308266106026080L;

	public GlyphViewer(GuiController controller) {
		Font f = new Font(getFont().getFontName(), Font.PLAIN, 64);
		setFont(f);
		setHorizontalAlignment(JTextField.CENTER);
		setEditable(false);
		EmptyBorder m = new EmptyBorder(10, 10, 10, 10);
		setBorder(new CompoundBorder(new EtchedBorder(), m));

		controller.setGlyphViewer(this);
		setPreferredSize(new Dimension(100, 100));

		final JPopupMenu menu = new GlyphViewerMenu();
		addCaretListener(new CaretListener() {
			public void caretUpdate(CaretEvent e) {
				String s = getSelectedText();
				if (s != null && s.length() > 0) {
					menu.show(GlyphViewer.this, 70, 70);
				}
			}
		});
	}

	private void copyChar() {
		Clipboard b = Toolkit.getDefaultToolkit().getSystemClipboard();
		StringSelection s = new StringSelection(getText());
		b.setContents(s, s);
	}

	private void changeFont(String nm) {
		Font f = getFont();
		int sz = f.getSize();
		int st = f.getStyle();
		setFont(new Font(nm, st, sz));
	}

	class GlyphViewerMenu extends JPopupMenu {
		private static final long serialVersionUID = 847563481396381931L;

		GlyphViewerMenu() {
			add(new TextAction("Copy") {
				private static final long serialVersionUID = -4087404094754292233L;
				public void actionPerformed(ActionEvent e) { copyChar(); }
			});
			JMenu fontmenu = new JMenu("font");
			setFontMenu(fontmenu, "Dialog");
			try {
				addCustomFontMenu(fontmenu);
			} catch (IOException e) {
				e.printStackTrace();
				Logger.getLogger(Main.LOGNAME).warning(e.getMessage());
			}
			add(fontmenu);
			setupAutoReflesh(fontmenu);
		}

		private void addCustomFontMenu(JMenu menu) throws IOException {
			ConfigScript s = ConfigScript.getInstance();
			if (! s.isLoaded()) { s.load(); }
			String[] fnt = s.getFontNames();
			if (fnt != null) {
				for (String nm: fnt) setFontMenu(menu, nm);
			} else {
				String msg = "configuration of fonts is not found.";
				System.err.println(msg);
				Logger.getLogger(Main.LOGNAME).warning(msg);
			}
		}

		private void setFontMenu(JMenu menu, final String nm) {
			menu.add(new TextAction(nm) {
				private static final long serialVersionUID = 7621704223879655193L;
				public void actionPerformed(ActionEvent e) { changeFont(nm); }
			});
		}

		private void setupAutoReflesh(JMenu fontmenu) {
			fontmenu.addMenuListener(new MenuListener() {
				public void menuSelected(MenuEvent e) {
					ConfigScript s = ConfigScript.getInstance();
					if (! s.isLoaded()) { 
						try {
							s.load();
							Object o = e.getSource();
							if (o instanceof JMenu) {
								JMenu m = (JMenu) o;
								m.removeAll();
								addCustomFontMenu(m);
							} else {
								System.out.println(o);
							}
						} catch (IOException ex) {
							ex.printStackTrace();
						} 
					}
				}
				public void menuCanceled(MenuEvent e) { }
				public void menuDeselected(MenuEvent e) { }
			});
		}
	}
}
