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

import java.util.LinkedList;
import java.util.ListIterator;

public class HistoryBuffer {
	private final static int MAX_LENGTH = 100;
	private final LinkedList<String> buffer = new LinkedList<String>();
	private ListIterator<String> iterator = null;
	private boolean prev = true;

	public void add(String buf) {
		buffer.add(buf);
		if (buffer.size() >= MAX_LENGTH) { buffer.removeFirst(); }
		iterator = null;
		prev = true;
	}

	public String getPrev() {
		String ret = null;
		if (! isBufferEmpty() && iterator.hasPrevious()) {
			ret = iterator.previous();
			if (! prev && iterator.hasPrevious()) { ret = iterator.previous(); }
			prev = true;
		}
		return ret;
	}

	public String getNext() {
		String ret = null;
		if (! isBufferEmpty() && iterator.hasNext()) {
			ret = iterator.next();
			if (prev && iterator.hasNext()) { ret = iterator.next(); }
			prev = false;
		}
		return ret;
	}

	public String getCurrent() {
		return buffer.isEmpty() ? null : buffer.getLast();
	}

	private boolean isBufferEmpty() {
		boolean ret = buffer.isEmpty();
		if (! ret && iterator == null) { 
			iterator = buffer.listIterator(buffer.size() - 1); 
		}
		return ret;
	}
}
