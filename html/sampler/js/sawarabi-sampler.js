var CGI_URI = '../../cgi-bin/sawarabi-sampler.cgi';
var CANNOT_MAKE_HTTP_OBJECT = 
  'Cannot make an object for communication with the server.';
var SESSION_TIMEOUT =
  'Timed out.  Could not receive any response from the server in %d seconds';

function Session() {
  this.request = null;
  this.timeout = 10;
}
Session.prototype = {
  get_request_object: function() {
    var ret = null;
    if (XMLHttpRequest) {
      try { ret = new XMLHttpRequest(); } catch (err) { }
    } else if (ActiveXObject) {
      try { ret = new ActiveXObject('Msxml2.XMLHTTP'); } catch (err) { }
    }
    return ret;
  },
  send_request: function(data, size) {
    var that = this;
    this.request = this.get_request_object();
    if (this.request == null) {
      alert(CANNOT_MAKE_HTTP_OBJECT);
      return;
    }
    this.request.onreadystatechange = function() {
      var req = that.request;
      if (req.readyState == 4 && req.status == 200) {
        if (that.timeout_keeper) { that.timeout_keeper.abort(); }
        that.get_response(req.responseText);
      }
    };
    var uri = CGI_URI + '?data=' + escape(data) + '&size=' + escape(size);
    this.request.open('GET', uri, true);
    this.request.send(null);
    this.timeout_keeper = new Timer(this, 'on_timed_out', this.timeout * 1000);
  },
  get_response: function(response_text) {
    var is_IE = /*@ ! @*/false; // !
    var v = elem('canvas');
    var ret = JSON.parse(response_text);
    if (ret.glyphs != 0) {
      this.make_svg_elements(v, ret.html, is_IE);
    } else {
      v.innerHTML = '<br>';
    }
    if (ret.glyphs == 0 || is_IE) { enable_update_button(); }
    if (svg_is_loaded) { svg_is_loaded.clear_timeout(); }
    svg_is_loaded = new SvgLoadedChecker(ret.glyphs);
  },
  make_svg_elements: function(canvas, data, is_IE) {
    canvas.innerHTML = '';
    for (var i in data) {
      var item = data[i];
      var o;
      if (item.data) {
        o = document.createElement('object');
        o.setAttribute('data', item.data);
        o.setAttribute('type', 'image/svg+xml');
        o.setAttribute('width', item.width);
        o.setAttribute('height', item.height);
        o.setAttribute('onload', item.onload);
      } else {
        o = document.createTextNode('?');
      }
      canvas.appendChild(o);
    }
    if (is_IE) {
      elem('for_sie').innerHTML = 'loading...<script defer="defer" type="text/javascript">svgtovml();</script>';
    }
  },
  on_timed_out: function() {
    alert(SESSION_TIMEOUT.replace(/%d/, this.timeout));
    if (this.request) { this.request.abort(); }
    enable_update_button();
  }
}

function SvgLoadedChecker(length) {
  this.array = [];
  this.length = length;
  this.timeout = new Timer(this, 'on_timed_out', 10 * 1000);
}
SvgLoadedChecker.prototype = {
  check: function(id) {
    this.array[id] = true;
    var b = true;
    for (var i = 0; i < this.length; i++) {
      if (! (b = this.array[i])) { break; }
    }
    if (b) {
      var timer = setTimeout(enable_update_button, 100);
      svg_is_loaded = null;
    }
  },
  clear_timeout: function() {
    if (this.timeout) { this.timeout.abort(); }
  },
  on_timed_out: function() {
    enable_update_button();
  }
}

var svg_is_loaded;

function on_svg_loaded(id) {
  if (svg_is_loaded) { svg_is_loaded.check(id); }
}

function enable_update_button() {
  var button = elem('update');
  button.disabled = false;
  document.body.style.cursor = 'auto';
}

function draw_svg() {
  var text = elem('input').value;
  var us = 0;
  for (var i = 0, data = ''; i < text.length; i++) {
    var a = text.charCodeAt(i);
    if (us == 0) {
      if (a >= 0xd800 && a <= 0xdbff) us = a;
      else c = '0000' + a.toString(16);
    } else {
      c = ((us - 0xd800) * 0x400 + a - 0xdc00 + 0x10000).toString(16);
      us = 0;
    }
    if (us == 0) {
      c = c.substr(c.length - 5);
      data += c;
    }
  }
  var size = elem('size').value;
  var button = elem('update');
  document.body.style.cursor = 'wait';
  button.disabled = true;
  new Session().send_request(data, size);
}

function clear_field() {
  var t = elem('input');
  t.value = '';
  t.focus();
}

function init(help_length) {
  elem('script-enabled').style.display = 'block';
  HelpSwitch.instance = new HelpSwitch(help_length);
  var m = MessageAnimation;
  m.instance = new m(elem('help'), elem('next'));
}

function elem(id) {
  return document.getElementById(id);
}

function HelpSwitch(help_length) {
  this.ON_IMAGE = 'img/dolphin.png';
  this.OFF_IMAGE = 'img/dolphin-help.png';
  this.showing = false;
  this.assistant = elem('assistant');
  this.balloon = elem('assistant-balloon');
  this.canvas = elem('help');
  this.button = elem('next');
  this.message_no = 0;
  this.help_length = help_length;
}
HelpSwitch.instance;
HelpSwitch.prototype = {
  execute: function() {
    var b = (this.showing = ! this.showing);
    this[b ? 'show' : 'hide']();
  },

  show: function() {
    this.assistant.src = this.ON_IMAGE;
    var cs = this.canvas.style;
    cs.right = '10px';
    cs.border = '1px solid black';
    cs.display = 'block';
    this.balloon.style.display = 'block';
    // TODO: write some codes for animation of the help frame here?
    this.message_no = 0;
    this.show_next_message();
  },
  hide: function() {
    this.assistant.src = this.OFF_IMAGE;
    MessageAnimation.instance.abort();
    this.canvas.innerHTML = '';
    this.canvas.style.display = 'none';
    this.button.style.display = 'none';
    this.balloon.style.display = 'none';
    this.message_no = 0;
  },
  show_next_message: function() {
    this.message_no++;
    if (this.message_no == this.help_length + 1) { this.message_no = 1; }
    id = 'help-msg-' + this.message_no;
    MessageAnimation.instance.show_message(elem(id).innerHTML);
  }
}

function switch_help() {
  HelpSwitch.instance.execute();
}

function change_message_next() {
  HelpSwitch.instance.show_next_message();
}

function MessageAnimation(canvas, next_button) {
  this.canvas = canvas;
  this.next_button = next_button;
  this.buffer = '';
  this.html = '';
  this.tag_stack = new TagStack();
  this.interval = 50;
}
MessageAnimation.instance;
MessageAnimation.prototype = {
  abort: function() {
    if (this.timer) { this.timer.abort(); }
    var m = MessageAnimation;
    m.instance = new m(this.canvas, this.next_button);
  },
  show_message: function(html) {
    this.html = html;
    this.next_button.style.display = 'none';
    this.timer = this.timer || new Timer(this, 'show_next_char', this.interval);
  },
  show_next_char: function() {
    var index = this.buffer.length;
    if (index == this.html.length) {
      this.abort();
      this.next_button.style.display = 'block';
    } else {
      var ch = this.html.substring(index, index + 1);
      if (ch == '<') {
        var end = this.html.indexOf('>', index);
        var tag = this.html.substring(index, end + 1);
        this.buffer = this.buffer + tag;
        if (tag[1] == '/') {
          this.tag_stack.pop();
	} else {
          this.tag_stack.push_tag(tag);
	}
      } else if (ch == '&') {
        var end = this.html.indexOf(';', index);
        if (end != -1) {
          ch = this.html.substring(index, end + 1);
	}
        this.buffer = this.buffer + ch;
      } else {
        this.buffer = this.buffer + ch;
      }
      var buf = this.buffer;
      if (this.tag_stack.has_tags()) {
        buf += this.tag_stack.get_close_tags();
      }
      this.canvas.innerHTML = buf;
      var interval = this.interval;
      if (ch == 'ã€‚') { interval *= 10; } 
      this.timer.restart(interval);
    }
  }
}

function TagStack() {
  this.stack = [];
}
TagStack.prototype = {
  has_tags: function() {
    return this.stack.length != 0;
  },
  pop: function() {
    var len = this.stack.length - 1;
    return (len < 0) ? null : this.stack.splice(len, 1);
  },
  push: function(item) {
    this.stack.push(item);
  },
  push_tag: function(tag) {
    var idx = tag.indexOf(' ');
    if (idx < 0) { idx = tag.length - 1; }
    var name = tag.substring(1, idx);
    this.push(name);
  },
  get_close_tags: function() {
    var buf = '';
    for (var i = this.stack.length - 1; i >= 0; i--) {
      buf += ('</' + this.stack[i] + '>');
    }
    return buf;
  }
}

function Timer(target, method, timeout) {
  this.target = target;
  this.method = method;
  this.id = this.set_timer(timeout);
}
Timer.prototype = {
  abort: function() {
    if (this.id) { clearTimeout(this.id); }
  },
  restart: function(timeout) {
    this.id = this.set_timer(timeout);
  },
  set_timer: function(timeout) {
    var t = this.target, m = this.method;
    return setTimeout(function() { if (t[m]) { t[m](); } }, timeout);
  }
}
