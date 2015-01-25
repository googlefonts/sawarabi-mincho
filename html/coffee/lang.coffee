availableLanguages =
  en: "English"
  ja: "日本語"


main = ->
  @menu = new LangMenu()
  @currentLabel = new CurrentLangLabel(@menu)
  @menu.buildItems @currentLabel.text()
  @currentLabel.$el.attr "data-key": @menu.currentLangSymbol

class CurrentLangLabel
  constructor: (menu)->
    @el = "#current-lang"
    @$el = $(@el)
    @menu = menu

    @$el.click (event) =>
      event.stopPropagation()
      $(@menu.$el).css(
        "z-index": 99
      ).toggle()

  text: ->
    @$el.text().replace /\s/g, ''

class LangMenuItem
  constructor: (langSymbol, langText)->
    @$el = $(document.createElement "div")

    @$el.attr(
      "data-key": langSymbol
      lang: langSymbol
    ).addClass("item").css(
      clear: "both"
    ).text langText

class LangMenu
  constructor: ->
    @el = "#lang-menu-container"
    @$el = $(@el)

  buildItems: (currentLangText)->
    for k, v of availableLanguages
      if v is currentLangText
        @currentLangSymbol = k
      else
        @$el.append new LangMenuItem(k, v).$el

    $('.item', @$el).click @onclickItem
    $('body').click => @$el.hide()
    return

  onclickItem: (event)->
    console.log(@)

    return if $(@).attr("id") == "current-lang"
    key = $(@).attr("data-key") + '/'
    key = '' if key is 'ja/'
    root = '../'
    root = './' if $("div#current-lang").attr("data-key") is "ja"
    window.location = root + key
    return

$ ->
  main()
