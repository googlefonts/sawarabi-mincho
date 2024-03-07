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

import java.io.File;
import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;

public class Main {
	public static final String LOGNAME = "jp.sourceforge.sawarabifonts.chartool.log";

	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				Main m = new Main();
				m.setupLogger();
				m.showGUI();
			}
		});
	}

	private void showGUI() {
		JFrame f = new JFrame();
		setupConfigScript(f);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.add(new MainPanel(this));
		f.setSize(340, 120);
		f.setVisible(true);
	}

	private void setupLogger() {
		Logger log = Logger.getLogger(LOGNAME);
		try {
			File f = new File("log");
			if (! f.exists()) { f.mkdir(); }
			log.addHandler(new FileHandler("log/error", 200000, 10, false));
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void setupConfigScript(JFrame frame) {
		ConfigScript s = ConfigScript.getInstance();
		if (! s.isLoaded()) {
			try {
				s.load();
			} catch (IOException e) {
				e.printStackTrace();
				Logger.getLogger(LOGNAME).warning(e.getMessage());
			}
		}
		s.setFrame(frame);
	}

	public CharProperty searchChar(String str) throws InvalidSearchStringException {
		if (str == null || str.length() == 0) { return null; }

		String code = null;
		String ch = null;
		char c = str.charAt(0);
		if (Character.isHighSurrogate(c)) {
			if (str.length() >= 2) {
				char c1 = str.charAt(1);
				int t = ((int) c - 0xd800) * 0x400 + (int) c1 - 0xdc00 + 0x10000;
				code = Integer.toHexString(t);
				ch = new String(new char[] { c, c1 });
			} else {
				code = fillZero(Integer.toHexString(c), 4);
				ch = new String(new char[] { c });
			}
		} else {
			code = fillZero(Integer.toHexString(c), 4);
			ch = new String(new char[] { c });
		}
		return new CharProperty(ch, code);
	}

	public CharProperty searchChar(int code) throws InvalidSearchStringException {
		String h = Integer.toHexString(code);
		String s = null;
		String c = null;
		if (h.length() >= 5) {
			int x = code - 0x10000;
			int c0 = x / 0x400 + 0xd800;
			int c1 = x % 0x400 + 0xdc00;
			s = new String(new char[] { (char) c0, (char) c1});
			c = h;
		} else {
			s = new String(new char[] { (char) code });
			c = fillZero(h, 4);
		}
		return new CharProperty(s, c);
	}

	private String fillZero(String str, int length) {
		String ret = str;
		int l = str.length();
		if (l < length) {
			StringBuilder sb = new StringBuilder(length);
			for (int i = 0; length - l - i > 0; i++) { sb.append('0'); }
			sb.append(str);
			ret = sb.toString();
		}
		return ret;
	}
}
