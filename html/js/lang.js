var availableLanguages = {
    de: "Deutsch",
    en: "English",
    ja: "日本語", 
};

$(document).ready(function() {
  var menu = $("#lang-menu-container");
  var currentText = $("div#navbar").text().replace(/\s/g, '');
  for (var key in availableLanguages) {
    var c = availableLanguages[key];
    if (c == currentText) {
      $("div#current-lang").attr({"data-key": key});
    } else {
      var item = document.createElement("div");
      $(item).attr({"data-key": key});
      $(item).addClass("item").css({clear: "both"}).attr({lang: key}).text(c);
      menu.append(item);
    }
  }
  $('div#lang').append(menu);

  $('body').click(function() {
    $(menu).hide();
  });
  $('div#lang .item').click(function(event) {
    if ($(this).attr("id") == "current-lang") return;
    var key = $(this).attr("data-key") + '/';
    if (key == 'ja/') key = '';
    var root = "../"
    if ($("div#current-lang").attr("data-key") == "ja") root = "./"
    window.location = root + key;
  });
  $('div#current-lang').click(function(event) {
    event.stopPropagation();
    $(menu).css({'z-index': 99});
    $(menu).toggle();
  });
});
