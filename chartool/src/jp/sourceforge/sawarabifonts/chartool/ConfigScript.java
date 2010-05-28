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
import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Logger;

import javax.swing.JFrame;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptableObject;

public class ConfigScript {
	private final static ConfigScript instance = new ConfigScript();
	private JsScriptableObject scriptable = null;

	private ConfigScript() { }

	public static ConfigScript getInstance() {
		return instance;
	}

	public void load() throws IOException {
		load("js/charpalette.js");
	}

	public void load(String filename) throws IOException {
		File f = new File(filename);
		FileReader in = new FileReader(f);
		Context cx = Context.enter();
		scriptable = new JsScriptableObject();
		cx.initStandardObjects(scriptable);
		setupVariables();
		try {
			cx.evaluateReader(scriptable, in, "<config>", 0, null);
		} finally {
			Context.exit();
		}
	}

	public boolean isLoaded() {
		return scriptable != null;
	}

	public String[] getFontNames() {
		String[] ret = null;
		if (scriptable.has("fonts", scriptable)) {
			Object o = scriptable.get("fonts", scriptable);
			try {
				ret = (String[]) Context.jsToJava(o, String[].class);
			} catch (EvaluatorException e) {
				e.printStackTrace();
				Logger.getLogger(Main.LOGNAME).warning(e.getMessage());
			}
		}
		return ret;
	}

	private Function[] getScriptFunction() {
		final String NAME = "script";
		Function[] ret = null;
		if (scriptable.has(NAME, scriptable)) {
			Object o = scriptable.get(NAME, scriptable);
			try {
				ret = (Function[]) Context.jsToJava(o, Function[].class);
			} catch (EvaluatorException e) {
				e.printStackTrace();
				Logger.getLogger(Main.LOGNAME).warning(e.getMessage());
			}
		}
		return ret;
	}

	public void execScript(int id, String property, int modifier) throws Exception {
		Function[] fs = getScriptFunction();
		if (fs == null || fs.length <= id) { return ; }

		Context cx = Context.enter();
//		Class<?> clazz = org.jdesktop.jdic.desktop.Desktop.class;
//		cx.setApplicationClassLoader(clazz.getClassLoader());
		try {
			fs[id].call(cx, scriptable, scriptable, new Object[] {property, modifier});
		} finally {
			Context.exit();
		}
	}

	private void setupVariables() {
		final int RO = ScriptableObject.READONLY;
		final int DE = ScriptableObject.DONTENUM;
		String home = System.getProperty("user.home");
		ScriptableObject.defineProperty(scriptable, "HOME", home, RO);

		String[] fs = new String[] { "alert" };
		scriptable.defineFunctionProperties(fs, JsScriptableObject.class, DE);
	}

	public void setFrame(JFrame frame) {
		scriptable.setFrame(frame);
	}
}
