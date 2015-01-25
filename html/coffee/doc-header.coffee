Canvas =
  el: "canvas#header-canvas"
  generateContext: ->
    @$el = $(@el)
    cvs = @$el.get(0)
    @context = if cvs and cvs.getContext then cvs.getContext('2d') else null
    @ctx = @context
    @ctx.save() if @ctx

class Screen
  constructor: (attr={}) ->
    @width = attr.width
    @height = attr.height
    @objects = []
    @locking = false

  clear: ->
    Canvas.ctx.clearRect(0, 0, @width, @height)
    Canvas.ctx.restore()
    Canvas.ctx.save()
    @objects = []

  add: (obj) ->
    @objects.push(obj)

  draw: (obj) ->
    if obj
      obj.draw()
    else
      x.draw() for x in @objects
    @

  animate: ->
    @locking = true
    setTimeout =>
      animating = false
      for x in @objects when x.isAnimating? and x.isAnimating()
        x.draw()
        animating = true
      if animating then @animate() else @afterAnimation()
    , 25
  afterAnimation: ->
    @locking = false
    x.afterAnimation(@) for x in @objects when x.afterAnimation?

class Label
  constructor: (text, attr={}) ->
    @text = text
    merge(@, attr)
    @font ?= '10px sans'
    @color ?= 'white'
    @x ?= 0
    @y ?= 0

  getWidth: ->
    Canvas.ctx.font = @font
    Canvas.ctx.measureText(@text).width

  draw: (offsetX=0, offsetY=0) ->
    pos = screenPosition @, offsetX, offsetY
    Canvas.ctx.font = @font
    Canvas.ctx.fillStyle = @color
    Canvas.ctx.fillText @text, pos.x, pos.y

class Line
  constructor: (attr={}) ->
    @x0 = attr.x0 or attr.x or 0
    @y0 = attr.y0 or attr.y or 0
    @x1 = attr.x1 or attr.x or 0
    @y1 = attr.y1 or attr.y or 0
    @color = attr.color or '#fff'

  draw: (offsetX=0, offsetY=0) ->
    pos = screenPosition @, offsetX, offsetY
    c = Canvas.ctx
    c.beginPath()
    c.strokeStyle = @color
    c.moveTo pos.x0, pos.y0
    c.lineTo pos.x1, pos.y1
    c.stroke()
    c.closePath()

class AbstractRectangle
  constructor: (attr={}) ->
    merge(@, attr)
    @x0 ?= 0
    @y0 ?= 0
    @x1 ?= 0
    @y1 ?= 0

  draw: (offsetX=0, offsetY=0) ->
    pos = screenPosition @, offsetX, offsetY
    Canvas.ctx.beginPath()
    Canvas.ctx.rect(pos.x0, pos.y0, pos.x1 - pos.x0, pos.y1 - pos.y0)

class GradientRectangle extends AbstractRectangle
  constructor: (attr={}) ->
    super(attr)
    @colors ?= ['#fff', '#fff']
    @direction ?= 'horizontal'

  draw: (offsetX=0, offsetY=0) ->
    c = Canvas.ctx
    p = screenPosition(@, offsetX, offsetY)
    g = null
    if @direction is 'vertical'
      g = c.createLinearGradient(p.x0, p.y0, p.x0, p.y1)
    else if @direction is 'horizontal'
      g = c.createLinearGradient(p.x0, p.y0, p.x1, p.y0)
    d = 0.0
    for v in @colors
      g.addColorStop(d, v)
      d += 1 / (@colors.length - 1)
    c.fillStyle = g
    super(offsetX, offsetY)
    c.fill()

class GraphBar
  constructor: (attr={}) ->
    merge @, attr
    @x ?= 0
    @y ?= 0
    @width ?= 1
    @height ?= 24
    @performance = attr.performance or 0
    @max = attr.max or 1
    @frame = 0.0
    @frames = 10.0

  draw: (offsetX=0, offsetY=0) ->
    width = (@width * 1.0) / @max * @performance * @frame / @frames
    c = Canvas.ctx
    c.beginPath()
    if @frame is @frames
      c.shadowBlur = 4
      c.shadowOffsetY = 2
      c.shadowColor = "rgba(0, 0, 0, 0.4)"
    pos = screenPosition @, offsetX, offsetY
    g = c.createLinearGradient(pos.x, pos.y, pos.x, pos.y + @height)
    g.addColorStop 0.0, "#fc8a27"
    g.addColorStop 0.1, "#fcb229"
    g.addColorStop 0.4, "#fc8a29"
    g.addColorStop 1.0, "#e97122"
    c.fillStyle = g
    c.rect(pos.x, pos.y, width, @height)
    c.fill()

  isAnimating: ->
    @frame += 1
    @frame <= @frames

  afterAnimation: (screen) ->
    rate = 100.0 * @performance / @max
    val = rate.toFixed(2)
    val = parseInt(val) if parseInt(val) * 1.0 is Number(val)
    label = new Label "#{val}%",
      font: '12px sans'
    width = 1.0 * @width / @max * @performance
    x = (width - label.getWidth()) / 2
    x = width + 10 if x < 5
    label.x = x + @x
    label.y = @height / 2 + 4 + @y
    screen.draw label

merge = (dist, src) ->
  dist[k] = v for k, v of src when src.hasOwnProperty(k)

screenPosition = (obj, offsetX, offsetY) ->
  pos = {}
  offset =
    x: offsetX
    y: offsetY
  for m in screenPosition.fields when obj.hasOwnProperty(m)
    pos[m] = obj[m] + offset[m[0]]
  pos
screenPosition.fields = ['x', 'y', 'x0', 'y0', 'x1', 'y1']

KanjiInfo =
  max:
    kyoikuKanji: 1006
    level1st: 2965
    level2nd: 3390
    level3rd: 1259
    level4th: 2436
  update: (callback) ->
    exec = (type, func) ->
      $.ajax 
        type: 'GET'
        url: '/cgi-bin/num-of-kanjis.cgi'
        data: "type=#{type}"
        dataType: 'json'
        success: (data, dataType) ->
          KanjiInfo[type] = data
          func()
        error: (request, textStatus, errorThrown) ->
          alert(textStatus)

    exec 'gothic', ->
      exec 'mincho', callback

makeGraphPage = (screen, pageName) ->
  # title
  do ->
    titleLabel = new Label window.dictionary.title,
      x: 30
      y: 36
      font: '21px sans'
    fontLabel = new Label window.dictionary.fonts[pageName],
      x: 30 + titleLabel.getWidth()
      y: 36
      font: '14px sans'
    bottomLine = new Line y: 53, x0: 0, x1: 680

    screen.add titleLabel
    screen.add fontLabel
    screen.add bottomLine

  # Graph Area
  do ->
    graphArea = new GradientRectangle
      x0: 146
      y0: 75
      x1: 650
      y1: 268
      colors: [
        'rgba(0, 0, 0, 0.25)'
        'rgba(0, 0, 0, 0.1)'
      ] 

    screen.add graphArea

    d = [650 - 146] / 4
    for _, x in new Array(5)
      screen.add new Line
        x: 146 + d * (x + 1)
        y0: 75
        y1: 268
        color: "rgb(178, 255, 178)"

  # Graph bars
  do ->
    fields = [
      'kyoikuKanji'
      'level1st'
      'level2nd'
      'level3rd'
      'level4th'
      ]

    for field, n in fields
      screen.add new Label window.dictionary[field],
        x: 30
        y: 103 + (37 * n)
        font: '14px sans'

      screen.add new GraphBar
        x: 146
        y: 87 + (37 * n)
        width: 504
        max: KanjiInfo.max[field]
        performance: KanjiInfo[pageName][field]

  # Graph base line
  screen.add new Line
    x: 146,
    y0: 75
    y1: 268
    color: "rgb(255, 255, 255)"

  screen

$ ->
  Canvas.generateContext()
  return unless Canvas.ctx

  screenScale = (->
    scale = {}
    scale[m] = parseInt(Canvas.$el.css(m)) for m in ['width', 'height']
    scale
  )()

  screen = new Screen screenScale

  KanjiInfo.update ->
    drawPage = (pageIndex) ->
      pageName = drawPage.mapping[pageIndex]
      makeGraphPage(screen, pageName).draw().animate() if pageName
    drawPage.mapping = [
      'gothic'
      'mincho'
    ]

    $container = $('#docs-header .buttons-container .inner-container')
    buttons = []
    for name, n in drawPage.mapping
      b = document.createElement('div')
      $(b).addClass('button').text(n + 1).click ->
        return if screen.locking or $(@).hasClass('pressed')
        screen.clear()
        index = parseInt($(@).text() - 1)
        name = drawPage.mapping[parseInt($(@).text() - 1)]
        makeGraphPage(screen, name).draw().animate() if name
        buttons.forEach (x) -> $(x).removeClass('pressed')
        $(@).addClass('pressed')
      $container.append(b)
      buttons.push(b)

    drawPage(0)
    $(buttons[0]).addClass('pressed')
