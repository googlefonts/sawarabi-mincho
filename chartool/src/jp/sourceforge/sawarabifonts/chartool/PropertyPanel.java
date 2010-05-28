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

import java.awt.FontMetrics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ComponentAdapter;
import java.awt.event.ComponentEvent;
import java.util.logging.Logger;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class PropertyPanel extends JPanel {
	private static final long serialVersionUID = -762290847824180418L;

	private final static int MARGIN_LEFT = 5;
	private final static int MARGIN_TOP = 5;
	private final int labelWidth;
	private final JButton[] buttons;
	private final JLabel[] properties;

	public PropertyPanel(GuiController controller) {
		setLayout(null);
		FontMetrics fm = getFontMetrics(getFont());
		String[] t = new String[] { "Code: ", "Name: " };
		buttons = new JButton[t.length];
		properties = new JLabel[t.length];
		labelWidth = setPropertyLabels(t, fm);
		int maxWidth = setPropertyButtons(t, fm, labelWidth);
		setPropertyLabels(t, fm, maxWidth);
		addComponentListener(new ComponentAdapter() {
			@Override public void componentResized(ComponentEvent e) {
				onResized();
			}
		});

		controller.setPropertyPanel(this);
	}

	public void setCode(String code) {
		properties[0].setText(code);
	}

	private void setPropertyLabels(String[] text, FontMetrics fm, int x) {
		int y = MARGIN_TOP;
		int h = fm.getHeight();
		for (int i = 0; i < text.length; i++) {
			properties[i] = new JLabel();
			add(properties[i]);
			properties[i].setLocation(x, y);
			y += h;
		}
	}

	private int setPropertyLabels(String[] text, FontMetrics fm) {
		int max = 0;
		int y = MARGIN_TOP;
		int h = fm.getHeight();
		for (String t : text) {
			JLabel n = new JLabel(t);
			n = new JLabel(t);
			add(n);
			n.setLocation(MARGIN_LEFT, y);
			int w = fm.stringWidth(t);
			n.setSize(w, h);
			y += h;
			if (max < w) max = w;
		}
		return max + MARGIN_LEFT;
	}

	private int setPropertyButtons(String[] text, FontMetrics fm, int x) {
		int w = fm.stringWidth("S");
		int h = fm.getHeight();
		int y = MARGIN_TOP;

		for (int i = 0; i < text.length; i++) {
			JButton b = new JButton("S");
			b.setFocusable(false);
			final int id = i;
			b.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					String t = properties[id].getText();
					ConfigScript s = ConfigScript.getInstance();
					try {
						s.execScript(id, t, e.getModifiers());
					} catch (Exception ex) {
						ex.printStackTrace();
						Logger.getLogger(Main.LOGNAME).warning(ex.getMessage());
					}
				}
			});
			add(b);
			b.setLocation(x, y);
			b.setSize(w + 10, h);
			y += h;
			buttons[i] = b;
		}
		return w;
	}

	private void onResized() {
		int y = MARGIN_TOP;
		int h = getFontMetrics(getFont()).getHeight();
		int w = getWidth() - labelWidth - buttons[0].getWidth();
		for (int i = 0; i < properties.length; i++) {
			properties[i].setLocation(labelWidth, y);
			properties[i].setSize(w, h);
			buttons[i].setLocation(labelWidth + w, y);
			y += h;
		}
	}

}
