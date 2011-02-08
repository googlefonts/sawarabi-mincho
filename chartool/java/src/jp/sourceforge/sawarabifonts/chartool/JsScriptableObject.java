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

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import org.mozilla.javascript.ScriptableObject;

public class JsScriptableObject extends ScriptableObject {
	private static final long serialVersionUID = 2857654503604299849L;

	private JFrame frame = null;

	public JsScriptableObject() {
		super();
		System.out.println("new");
	}

	@Override
	public String getClassName() {
		return "JsScriptableObject";
	}

	JFrame getFrame() {
		return frame;
	}

	public void setFrame(JFrame frame) {
		this.frame = frame;
	}

	public void alert(String message) {
		if (frame != null) {
			JOptionPane.showMessageDialog(frame, message);
		}
	}
}
