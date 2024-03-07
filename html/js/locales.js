var i18n = undefined;
function I18n() { }
I18n.dictionary = {}
I18n.append = function(dictionary) {
    $.extend(I18n.dictionary, dictionary);
    if (! i18n) i18n = dictionary;
};
I18n.setLocale = function(locale) {
    i18n = I18n.dictionary[locale];
}

