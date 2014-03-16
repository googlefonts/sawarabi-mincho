$(document).ready(function() {
    function DocHeaderScreen(canvasElement, langKey, kanjiCounts) {
	var TEXTS = {
	    ja: {
		title: ['漢字収録進捗状況（さわらびゴシック）',
			'漢字収録進捗状況（さわらび明朝）',
		       ],
		kyoikuKanji: '教育漢字',
		level1st: '第一水準漢字',
		level2nd: '第二水準漢字',
		level3rd: '第三水準漢字',
		level4th: '第四水準漢字',
	    },
	    en: {
		title: ['Kanji Coverage (Sawarabi Gothic)',
			'Kanji Coverage (Sawarabi Mincho)',
		       ],
		kyoikuKanji: 'Kyoiku Kanji',
		level1st: 'JIS 1st Level',
		level2nd: 'JIS 2nd Level',
		level3rd: 'JIS 3rd Level',
		level4th: 'JIS 4th Level',
	    },
	    de: {
		title: ['Kanji Coverage (Sawarabi Gothic)',
			'Kanji Coverage (Sawarabi Mincho)',
		       ],
		kyoikuKanji: 'Kyoiku Kanji',
		level1st: 'Niveau 1.',
		level2nd: 'Niveau 2.',
		level3rd: 'Niveau 3.',
		level4th: 'Niveau 4.',
	    },
	};
	var texts = TEXTS[langKey];

	function Label(text) {
	    this.text = text;
	    this.font = '10px sans';
	    this.color = 'white';
	    this.x = 0;
	    this.y = 0;
	}
	Label.prototype = {
	    setPosition: function(x, y) {
		this.x = x;
		this.y = y;
	    },
	    getWidth: function() {
		ctx.font = this.font;
		var measure = ctx.measureText(this.text);
		return measure.width;
	    },
	    draw: function() {
		var x = this.getX();
		var y = this.getY();
		ctx.font = this.font;
		ctx.fillStyle = this.color;
		ctx.fillText(this.text, x, y);
	    },
	    getX: function() {
		return screen.content.left + this.x;
	    },
	    getY: function() {
		return screen.content.top + this.y;
	    },
	};

	function GraphBar(height, max, performance) {
	    this.x = 0;
	    this.y = 0;
	    this.height = height;
	    this.max = max;
	    this.performance = performance;
	    this.frameColor = 'white';
	    this.fillColor = '#088a29';
	}
	GraphBar.prototype = {
	    draw: function(frame, frames) {
		if (this.performance == 0) return;
		var rate = (frame || 1) / (frames || 1);
		var value = this.performance * rate;
		var width = this.__calcWidth(value);
		if (width <= 1) return;
		ctx.fillStyle = this.fillColor;
		ctx.fillRect(this.getX() + 1, this.getY(), width - 1, this.height);
	    },
	    drawFrame: function() {
		var width = screen.content.width - this.x;
		ctx.strokeStyle = this.frameColor;
		ctx.beginPath()
		var x1 = this.getX() + 1;
		var y1 = this.getY() - 1;
		var x2 = this.getX() + width + 1;
		var y2 = this.getY() + this.height + 2;
		ctx.moveTo(x1, y1);
		ctx.lineTo(x2, y1);
		ctx.lineTo(x2, y2);
		ctx.lineTo(x1, y2);
		ctx.stroke();
	    },
	    drawRate: function() {
		var rate = this.performance * 1.0 / this.max;
		var caption = Math.round(rate * 10000) / 100 + '%';
		var label = new Label(caption);
		label.font = '10pt Arial';
		var width = this.__calcWidth();
		var x = this.x + 
		    (width > label.getWidth() ? 
		     (width - label.getWidth()) / 2 : (width + 10));
		label.setPosition(x, this.y + 14);
		label.draw();
	    },
	    setPosition: function(x, y) {
		this.x = x;
		this.y = y;
	    },
	    getX: function() {
		return screen.content.left + this.x;
	    },
	    getY: function() {
		return screen.content.top + this.y;
	    },
	    __calcWidth: function(performance) {
		var width = screen.content.width - this.x;
		var value = performance || this.performance;
		var rate = (value * 1.0) / this.max;
		return parseInt(width * 1.0 * rate);
	    },
	};

	function KanjiCoverageGraphPage(title, data) {
	    this.title = this.createTitle(title);
	    this.data = data;
	    this.captions = [];
	    this.graphs = [];
	    this.__setupGraphs();
	    this.pageLock = false;
	}
	KanjiCoverageGraphPage.prototype = {
	    draw: function() {
		screen.clear();
		this.title.draw();
		for (var n in this.captions) {
		    this.captions[n].draw();
		    this.graphs[n].drawFrame();
		}
		var x = screen.content.left + this.graphs[0].x;
		var y = screen.content.top + this.graphs[0].y;
		ctx.strokeStyle = 'white';
		ctx.moveTo(x, y - 10);
		var lastGraph = this.graphs[this.graphs.length - 1];
		y = screen.content.top + lastGraph.y + lastGraph.height;
		ctx.lineTo(x, y + 10);
		ctx.stroke();
		this.__drawAnimation();
	    },
	    createTitle: function(caption) {
		var title = new Label(caption);
		title.font = '21px Sans';
		return title;
	    },
	    __addGraph: function(caption, graphBar) {
		this.captions.push(caption);
		this.graphs.push(graphBar);
	    },
	    __setupGraphs: function() {
		var kanjis = {
		    kyoikuKanji: 1006,
		    level1st: 2965,
		    level2nd: 3390,
		    level3rd: 1259,
		    level4th: 2436,
		}
		var y = 45;
		for (var key in kanjis) {
		    var label = new Label(texts[key]);
		    label.font = "16px Sans";
		    label.setPosition(0, y + 15);
		    var graph = new GraphBar(18, kanjis[key], this.data[key]);
		    graph.setPosition(130, y);
		    this.__addGraph(label, graph);
		    y += 30;
		}
	    },
	    __beforeAnimation: function() {
		this.pageLock = true;
	    },
	    __afterAnimation: function() {
		this.pageLock = false;
	    },
	    __drawAnimation: function() {
		var frame = 1;
		var frames = 16;
		var that = this;
		var scenario = function() {
		    for (var n in that.graphs)
			that.graphs[n].draw(frame, frames);
		    if (frame++ < frames) {
			setTimeout(scenario, 25);
		    } else {
			for (var n in that.graphs) 
			    that.graphs[n].drawRate();
			that.__afterAnimation();
		    }
		};
		this.__beforeAnimation();
		setTimeout(scenario, 100);
	    },
	};

	function Screen() {
	    this.width = parseInt($(canvasElement).css('width'));
	    this.height = parseInt($(canvasElement).css('height'));
	    this.margin = {
		top: 55,
		left: 30,
		bottom: 65,
		right: 30,
	    };
	    this.content = {
		top: this.margin.top,
		left: this.margin.left,
		bottom: this.height - this.margin.bottom,
		right: this.width - this.margin.right,
	    };
	    this.content.width = this.content.right - this.content.left;
	    this.content.height = this.content.bottom - this.content.top;
	}
	Screen.prototype.clear = function() {
	    ctx.clearRect(0, 0, this.width, this.height);
	};

	var ctx = canvasElement.getContext('2d');
	var screen = new Screen();
	this.pages = [
	    new KanjiCoverageGraphPage(texts.title[0], kanjiCounts['gothic']),
	    new KanjiCoverageGraphPage(texts.title[1], kanjiCounts['mincho']),
	];
    }

    function getNumOfKanjis() {
      var url = '/cgi-bin/num-of-kanjis.cgi';
      var fontTypes = ['gothic', 'mincho'];
      var result = {};
      for (var n in fontTypes) {
        $.ajax({
          type: 'GET',
          url: url,
          data: "type=" + fontTypes[n],
          dataType: 'json',
          success: function(data, dataType) {
            result[fontTypes[n]] = data;
          },
          error: function(request, textStatus, errorThrown) {
            alert(textStatus);
          },
          async: false,
        });
      }
      return result;
    }


    (function() {
	var canvas = $("canvas#header-canvas").get(0);
	if (! canvas || ! canvas.getContext) return false;

        var kanjiCounts = getNumOfKanjis();
	var key = $('#current-lang').attr('data-key');
	var headerScreen = new DocHeaderScreen(canvas, key, kanjiCounts);
	var container = $("#docs-header .buttons-container .inner-container");
	var buttons = [];
	for (var n in headerScreen.pages) {
	    var button = document.createElement("div");
	    $(button).addClass("button").text(parseInt(n) + 1);
	    container.append(button);
	    buttons.push(button);
	}
	headerScreen.pages[0].draw();
	var pageIndex = 0;
	$(buttons[0]).addClass('pressed');
	for (var n in buttons) {
	    $(buttons[n]).click(function() {
		var index = parseInt($(this).text()) - 1;
		if (index != pageIndex) {
		    headerScreen.pages[index].draw();
		    for (var i in buttons) $(buttons[i]).removeClass('pressed');
		    $(this).addClass('pressed');
		    pageIndex = index;
		}
	    });
	}
    })();
});
