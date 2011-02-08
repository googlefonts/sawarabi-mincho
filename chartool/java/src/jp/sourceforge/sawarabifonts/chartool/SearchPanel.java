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

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Toolkit;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.Action;
import javax.swing.ActionMap;
import javax.swing.JButton;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.text.DefaultEditorKit;
import javax.swing.text.JTextComponent;
import javax.swing.text.Keymap;
import javax.swing.text.TextAction;

public class SearchPanel extends JPanel {
	private static final long serialVersionUID = 1971690273660748828L;

	private final JTextField searchField;
	private final HistoryBuffer buffer = new HistoryBuffer();
	private final SearchFieldPopup popup;

	public SearchPanel(final GuiController controller) {
		setLayout(new BorderLayout());

		searchField = new JTextField();
		popup = new SearchFieldPopup();
		searchField.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				if (e.getButton() == MouseEvent.BUTTON3) {
					popup.show(searchField, e.getX(), e.getY());
				}
			}
		});
		setupKeymap(controller);
		
		add(searchField, BorderLayout.CENTER);
		add(makeSearchButton(), BorderLayout.EAST);

		controller.setSearchPanel(this);
	}

	private JButton makeSearchButton() {
		JButton b = new JButton("Search");
		Keymap k = searchField.getKeymap();
		Action a = k.getAction(KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0));
		b.addActionListener(a);
		b.setFocusable(false);

		return b;
	}

	public void setFocus() {
		searchField.requestFocusInWindow();
	}

	public void setCaretPosition(int position, int length) {
		if (searchField.getText().length() > position) {
			searchField.setSelectionStart(position);
			searchField.setSelectionEnd(position + length); 
		} else {
			searchField.setSelectionStart(0);
			searchField.setSelectionEnd(length);
		}
	}

	private void setupKeymap(final GuiController controller) {
		Keymap map = JTextComponent.addKeymap("charpalette", searchField.getKeymap());
		searchField.setKeymap(map);

		setupSearchKeymap(controller);
		setupHistoryUpKeymap();
		setupHistoryDownKeymap();
	}

	private void setupHistoryUpKeymap() {
		Keymap map = searchField.getKeymap();
		KeyStroke key0 = KeyStroke.getKeyStroke(KeyEvent.VK_P, KeyEvent.CTRL_MASK);
		KeyStroke key1 = KeyStroke.getKeyStroke(KeyEvent.VK_UP, 0);
		Action a = new TextAction("history-up") {
			private static final long serialVersionUID = 8417010810041845179L;
			public void actionPerformed(ActionEvent e) {
				String s = buffer.getPrev();
				if (s != null) {
					searchField.setText(s);
					searchField.setCaretPosition(0);
				}
			}
		}; 
		map.addActionForKeyStroke(key0, a);
		map.addActionForKeyStroke(key1, a);
	}

	private void setupHistoryDownKeymap() {
		Keymap map = searchField.getKeymap();
		KeyStroke key0 = KeyStroke.getKeyStroke(KeyEvent.VK_N, KeyEvent.CTRL_MASK);
		KeyStroke key1 = KeyStroke.getKeyStroke(KeyEvent.VK_DOWN, 0);
		Action a = new TextAction("history-down") {
			private static final long serialVersionUID = 2292000606648845301L;
			public void actionPerformed(ActionEvent e) {
				String s = buffer.getNext();
				if (s != null) {
					searchField.setText(s);
					searchField.setCaretPosition(0);
				}
			}
		}; 
		map.addActionForKeyStroke(key0, a);
		map.addActionForKeyStroke(key1, a);
	}

	private void setupSearchKeymap(final GuiController controller) {
		KeyStroke key = KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0);
		Action a = new TextAction("search") {
			private static final long serialVersionUID = 118797095359988885L;
			public void actionPerformed(ActionEvent e) {
				String st = searchField.getSelectedText();
				int p = searchField.getCaretPosition();
				controller.onSearch(searchField.getText(), p, st);
				String s = buffer.getCurrent();
				String t = searchField.getText();
				if ((s == null || ! s.equals(t)) && t.length() != 0) {
					buffer.add(t);
				}
			}
		};
		searchField.getKeymap().addActionForKeyStroke(key, a);
	}


	class SearchFieldPopup extends JPopupMenu {
		private static final long serialVersionUID = 5225317856689478836L;

		final JMenuItem cut;
		final JMenuItem copy;
		final JMenuItem paste;
		final JMenuItem clear;

		SearchFieldPopup() {
			cut = makeMenuItem("Cut", DefaultEditorKit.cutAction);
			copy = makeMenuItem("Copy", DefaultEditorKit.copyAction);
			paste = makeMenuItem("Paste", DefaultEditorKit.pasteAction);
			clear = new JMenuItem(new TextAction("Clear") {
				private static final long serialVersionUID = 3995545953271258486L;
				public void actionPerformed(ActionEvent e) {
					searchField.setText("");
				}
			});
			add(cut);
			add(copy);
			add(paste);
			add(clear);
		}

		private JMenuItem makeMenuItem(String name, String action) {
			JMenuItem ret = null;
			Action a = getActionFromTextField(action);
			if (a != null) {
				ret = new JMenuItem();
				ret.setAction(a);
				ret.setText(name);
			}
			return ret;
		}

		private Action getActionFromTextField(String name) {
			ActionMap m = searchField.getActionMap();
			return m.get(name);
		}

		private boolean isClipboardContentsString(Clipboard c) {
			boolean ret = false;
			try {
				ret = c.isDataFlavorAvailable(DataFlavor.stringFlavor);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			}
			return ret;
		}

		private Clipboard getClipboard() {
			Toolkit k = Toolkit.getDefaultToolkit();
			return k.getSystemClipboard();
		}

		@Override
		public void show(Component invoker, int x, int y) {
			boolean s = searchField.getSelectedText() != null;
			cut.setEnabled(s);
			copy.setEnabled(s);
			paste.setEnabled(isClipboardContentsString(getClipboard()));
			clear.setEnabled(searchField.getText().length() != 0);
			super.show(invoker, x, y);
		}
	}

}
