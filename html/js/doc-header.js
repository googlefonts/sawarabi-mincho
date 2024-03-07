// Generated by CoffeeScript 1.12.7
(function() {
  var AbstractRectangle, Canvas, GradientRectangle, GraphBar, KanjiInfo, Label, Line, Screen, makeGraphPage, merge, screenPosition,
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  Canvas = {
    el: "canvas#header-canvas",
    generateContext: function() {
      var cvs;
      this.$el = $(this.el);
      cvs = this.$el.get(0);
      this.context = cvs && cvs.getContext ? cvs.getContext('2d') : null;
      this.ctx = this.context;
      if (this.ctx) {
        return this.ctx.save();
      }
    }
  };

  Screen = (function() {
    function Screen(attr) {
      if (attr == null) {
        attr = {};
      }
      this.width = attr.width;
      this.height = attr.height;
      this.objects = [];
      this.locking = false;
    }

    Screen.prototype.clear = function() {
      Canvas.ctx.clearRect(0, 0, this.width, this.height);
      Canvas.ctx.restore();
      Canvas.ctx.save();
      return this.objects = [];
    };

    Screen.prototype.add = function(obj) {
      return this.objects.push(obj);
    };

    Screen.prototype.draw = function(obj) {
      var i, len, ref, x;
      if (obj) {
        obj.draw();
      } else {
        ref = this.objects;
        for (i = 0, len = ref.length; i < len; i++) {
          x = ref[i];
          x.draw();
        }
      }
      return this;
    };

    Screen.prototype.animate = function() {
      this.locking = true;
      return setTimeout((function(_this) {
        return function() {
          var animating, i, len, ref, x;
          animating = false;
          ref = _this.objects;
          for (i = 0, len = ref.length; i < len; i++) {
            x = ref[i];
            if (!((x.isAnimating != null) && x.isAnimating())) {
              continue;
            }
            x.draw();
            animating = true;
          }
          if (animating) {
            return _this.animate();
          } else {
            return _this.afterAnimation();
          }
        };
      })(this), 25);
    };

    Screen.prototype.afterAnimation = function() {
      var i, len, ref, results, x;
      this.locking = false;
      ref = this.objects;
      results = [];
      for (i = 0, len = ref.length; i < len; i++) {
        x = ref[i];
        if (x.afterAnimation != null) {
          results.push(x.afterAnimation(this));
        }
      }
      return results;
    };

    return Screen;

  })();

  Label = (function() {
    function Label(text, attr) {
      if (attr == null) {
        attr = {};
      }
      this.text = text;
      merge(this, attr);
      if (this.font == null) {
        this.font = '10px sans';
      }
      if (this.color == null) {
        this.color = 'white';
      }
      if (this.x == null) {
        this.x = 0;
      }
      if (this.y == null) {
        this.y = 0;
      }
    }

    Label.prototype.getWidth = function() {
      Canvas.ctx.font = this.font;
      return Canvas.ctx.measureText(this.text).width;
    };

    Label.prototype.draw = function(offsetX, offsetY) {
      var pos;
      if (offsetX == null) {
        offsetX = 0;
      }
      if (offsetY == null) {
        offsetY = 0;
      }
      pos = screenPosition(this, offsetX, offsetY);
      Canvas.ctx.font = this.font;
      Canvas.ctx.fillStyle = this.color;
      return Canvas.ctx.fillText(this.text, pos.x, pos.y);
    };

    return Label;

  })();

  Line = (function() {
    function Line(attr) {
      if (attr == null) {
        attr = {};
      }
      this.x0 = attr.x0 || attr.x || 0;
      this.y0 = attr.y0 || attr.y || 0;
      this.x1 = attr.x1 || attr.x || 0;
      this.y1 = attr.y1 || attr.y || 0;
      this.color = attr.color || '#fff';
    }

    Line.prototype.draw = function(offsetX, offsetY) {
      var c, pos;
      if (offsetX == null) {
        offsetX = 0;
      }
      if (offsetY == null) {
        offsetY = 0;
      }
      pos = screenPosition(this, offsetX, offsetY);
      c = Canvas.ctx;
      c.beginPath();
      c.strokeStyle = this.color;
      c.moveTo(pos.x0, pos.y0);
      c.lineTo(pos.x1, pos.y1);
      c.stroke();
      return c.closePath();
    };

    return Line;

  })();

  AbstractRectangle = (function() {
    function AbstractRectangle(attr) {
      if (attr == null) {
        attr = {};
      }
      merge(this, attr);
      if (this.x0 == null) {
        this.x0 = 0;
      }
      if (this.y0 == null) {
        this.y0 = 0;
      }
      if (this.x1 == null) {
        this.x1 = 0;
      }
      if (this.y1 == null) {
        this.y1 = 0;
      }
    }

    AbstractRectangle.prototype.draw = function(offsetX, offsetY) {
      var pos;
      if (offsetX == null) {
        offsetX = 0;
      }
      if (offsetY == null) {
        offsetY = 0;
      }
      pos = screenPosition(this, offsetX, offsetY);
      Canvas.ctx.beginPath();
      return Canvas.ctx.rect(pos.x0, pos.y0, pos.x1 - pos.x0, pos.y1 - pos.y0);
    };

    return AbstractRectangle;

  })();

  GradientRectangle = (function(superClass) {
    extend(GradientRectangle, superClass);

    function GradientRectangle(attr) {
      if (attr == null) {
        attr = {};
      }
      GradientRectangle.__super__.constructor.call(this, attr);
      if (this.colors == null) {
        this.colors = ['#fff', '#fff'];
      }
      if (this.direction == null) {
        this.direction = 'horizontal';
      }
    }

    GradientRectangle.prototype.draw = function(offsetX, offsetY) {
      var c, d, g, i, len, p, ref, v;
      if (offsetX == null) {
        offsetX = 0;
      }
      if (offsetY == null) {
        offsetY = 0;
      }
      c = Canvas.ctx;
      p = screenPosition(this, offsetX, offsetY);
      g = null;
      if (this.direction === 'vertical') {
        g = c.createLinearGradient(p.x0, p.y0, p.x0, p.y1);
      } else if (this.direction === 'horizontal') {
        g = c.createLinearGradient(p.x0, p.y0, p.x1, p.y0);
      }
      d = 0.0;
      ref = this.colors;
      for (i = 0, len = ref.length; i < len; i++) {
        v = ref[i];
        g.addColorStop(d, v);
        d += 1 / (this.colors.length - 1);
      }
      c.fillStyle = g;
      GradientRectangle.__super__.draw.call(this, offsetX, offsetY);
      return c.fill();
    };

    return GradientRectangle;

  })(AbstractRectangle);

  GraphBar = (function() {
    function GraphBar(attr) {
      if (attr == null) {
        attr = {};
      }
      merge(this, attr);
      if (this.x == null) {
        this.x = 0;
      }
      if (this.y == null) {
        this.y = 0;
      }
      if (this.width == null) {
        this.width = 1;
      }
      if (this.height == null) {
        this.height = 24;
      }
      this.performance = attr.performance || 0;
      this.max = attr.max || 1;
      this.frame = 0.0;
      this.frames = 10.0;
    }

    GraphBar.prototype.draw = function(offsetX, offsetY) {
      var c, g, pos, width;
      if (offsetX == null) {
        offsetX = 0;
      }
      if (offsetY == null) {
        offsetY = 0;
      }
      width = (this.width * 1.0) / this.max * this.performance * this.frame / this.frames;
      c = Canvas.ctx;
      c.beginPath();
      if (this.frame === this.frames) {
        c.shadowBlur = 4;
        c.shadowOffsetY = 2;
        c.shadowColor = "rgba(0, 0, 0, 0.4)";
      }
      pos = screenPosition(this, offsetX, offsetY);
      g = c.createLinearGradient(pos.x, pos.y, pos.x, pos.y + this.height);
      g.addColorStop(0.0, "#fc8a27");
      g.addColorStop(0.1, "#fcb229");
      g.addColorStop(0.4, "#fc8a29");
      g.addColorStop(1.0, "#e97122");
      c.fillStyle = g;
      c.rect(pos.x, pos.y, width, this.height);
      return c.fill();
    };

    GraphBar.prototype.isAnimating = function() {
      this.frame += 1;
      return this.frame <= this.frames;
    };

    GraphBar.prototype.afterAnimation = function(screen) {
      var label, rate, val, width, x;
      rate = 100.0 * this.performance / this.max;
      val = rate.toFixed(2);
      if (parseInt(val) * 1.0 === Number(val)) {
        val = parseInt(val);
      }
      label = new Label(val + "%", {
        font: '12px sans'
      });
      width = 1.0 * this.width / this.max * this.performance;
      x = (width - label.getWidth()) / 2;
      if (x < 5) {
        x = width + 10;
      }
      label.x = x + this.x;
      label.y = this.height / 2 + 4 + this.y;
      return screen.draw(label);
    };

    return GraphBar;

  })();

  merge = function(dist, src) {
    var k, results, v;
    results = [];
    for (k in src) {
      v = src[k];
      if (src.hasOwnProperty(k)) {
        results.push(dist[k] = v);
      }
    }
    return results;
  };

  screenPosition = function(obj, offsetX, offsetY) {
    var i, len, m, offset, pos, ref;
    pos = {};
    offset = {
      x: offsetX,
      y: offsetY
    };
    ref = screenPosition.fields;
    for (i = 0, len = ref.length; i < len; i++) {
      m = ref[i];
      if (obj.hasOwnProperty(m)) {
        pos[m] = obj[m] + offset[m[0]];
      }
    }
    return pos;
  };

  screenPosition.fields = ['x', 'y', 'x0', 'y0', 'x1', 'y1'];

  KanjiInfo = {
    max: {
      kyoikuKanji: 1006,
      level1st: 2965,
      level2nd: 3390,
      level3rd: 1259,
      level4th: 2436
    },
    update: function(callback) {
      var exec;
      exec = function(type, func) {
        return $.ajax({
          type: 'GET',
          url: '/cgi-bin/num-of-kanjis.cgi',
          data: "type=" + type,
          dataType: 'json',
          success: function(data, dataType) {
            KanjiInfo[type] = data;
            return func();
          },
          error: function(request, textStatus, errorThrown) {
            return alert(textStatus);
          }
        });
      };
      return exec('gothic', function() {
        return exec('mincho', callback);
      });
    }
  };

  makeGraphPage = function(screen, pageName) {
    (function() {
      var bottomLine, fontLabel, titleLabel;
      titleLabel = new Label(window.dictionary.title, {
        x: 30,
        y: 36,
        font: '21px sans'
      });
      fontLabel = new Label(window.dictionary.fonts[pageName], {
        x: 30 + titleLabel.getWidth(),
        y: 36,
        font: '14px sans'
      });
      bottomLine = new Line({
        y: 53,
        x0: 0,
        x1: 680
      });
      screen.add(titleLabel);
      screen.add(fontLabel);
      return screen.add(bottomLine);
    })();
    (function() {
      var _, d, graphArea, i, len, ref, results, x;
      graphArea = new GradientRectangle({
        x0: 146,
        y0: 75,
        x1: 650,
        y1: 268,
        colors: ['rgba(0, 0, 0, 0.25)', 'rgba(0, 0, 0, 0.1)']
      });
      screen.add(graphArea);
      d = [650 - 146] / 4;
      ref = new Array(5);
      results = [];
      for (x = i = 0, len = ref.length; i < len; x = ++i) {
        _ = ref[x];
        results.push(screen.add(new Line({
          x: 146 + d * (x + 1),
          y0: 75,
          y1: 268,
          color: "rgb(178, 255, 178)"
        })));
      }
      return results;
    })();
    (function() {
      var field, fields, i, len, n, results;
      fields = ['kyoikuKanji', 'level1st', 'level2nd', 'level3rd', 'level4th'];
      results = [];
      for (n = i = 0, len = fields.length; i < len; n = ++i) {
        field = fields[n];
        screen.add(new Label(window.dictionary[field], {
          x: 30,
          y: 103 + (37 * n),
          font: '14px sans'
        }));
        results.push(screen.add(new GraphBar({
          x: 146,
          y: 87 + (37 * n),
          width: 504,
          max: KanjiInfo.max[field],
          performance: KanjiInfo[pageName][field]
        })));
      }
      return results;
    })();
    screen.add(new Line({
      x: 146,
      y0: 75,
      y1: 268,
      color: "rgb(255, 255, 255)"
    }));
    return screen;
  };

  $(function() {
    var screen, screenScale;
    Canvas.generateContext();
    if (!Canvas.ctx) {
      return;
    }
    screenScale = (function() {
      var i, len, m, ref, scale;
      scale = {};
      ref = ['width', 'height'];
      for (i = 0, len = ref.length; i < len; i++) {
        m = ref[i];
        scale[m] = parseInt(Canvas.$el.css(m));
      }
      return scale;
    })();
    screen = new Screen(screenScale);
    return KanjiInfo.update(function() {
      var $container, b, buttons, drawPage, i, len, n, name, ref;
      drawPage = function(pageIndex) {
        var pageName;
        pageName = drawPage.mapping[pageIndex];
        if (pageName) {
          return makeGraphPage(screen, pageName).draw().animate();
        }
      };
      drawPage.mapping = ['gothic', 'mincho'];
      $container = $('header .buttons-container .inner-container');
      buttons = [];
      ref = drawPage.mapping;
      for (n = i = 0, len = ref.length; i < len; n = ++i) {
        name = ref[n];
        b = document.createElement('div');
        $(b).addClass('button').text(n + 1).click(function() {
          var index;
          if (screen.locking || $(this).hasClass('pressed')) {
            return;
          }
          screen.clear();
          index = parseInt($(this).text() - 1);
          name = drawPage.mapping[parseInt($(this).text() - 1)];
          if (name) {
            makeGraphPage(screen, name).draw().animate();
          }
          buttons.forEach(function(x) {
            return $(x).removeClass('pressed');
          });
          return $(this).addClass('pressed');
        });
        $container.append(b);
        buttons.push(b);
      }
      drawPage(0);
      return $(buttons[0]).addClass('pressed');
    });
  });

}).call(this);
