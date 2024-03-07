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

import javax.swing.JPanel;
import javax.swing.SwingUtilities;
import javax.swing.border.EmptyBorder;

class MainPanel extends JPanel {
	private static final long serialVersionUID = 7520947148504510083L;

	public MainPanel(Main m) {
		GuiController c = new GuiController(m);
		final SearchPanel sp = new SearchPanel(c);
		PropertyPanel pp = new PropertyPanel(c);
		GlyphViewer gv = new GlyphViewer(c);

		EmptyBorder b = new EmptyBorder(10, 10, 10, 10);
		this.setBorder(b);
		this.setLayout(new BorderLayout());

		JPanel p = new JPanel();
		EmptyBorder e = new EmptyBorder(0, 10, 0, 0);
		p.setBorder(e);
		p.setLayout(new BorderLayout());
		p.add(sp, BorderLayout.NORTH);
		p.add(pp, BorderLayout.CENTER);
		this.add(p, BorderLayout.CENTER);

		this.add(gv, BorderLayout.WEST);

		SwingUtilities.invokeLater(new Runnable() {
			public void run() { sp.setFocus(); }
		});
	}
}
