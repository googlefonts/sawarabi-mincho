(function() {
    var languages = {
	ja: '日本語',
	en: 'English',
    };

    function getDefaultLang() {
	var paths = String(window.location).split('/');
	var last = paths.pop();
	if (last == '') last = paths.pop();
	if (last == 'index.html') last = paths.pop();

	return (last in languages) ? last : 'ja';
    }

    function setupLangSelector() {
	var defaultKey = getDefaultLang();
	var s = document.createElement('select');
	for (var key in languages) {
	    var opt = document.createElement('option');
	    opt.value = key;
	    if (key == defaultKey) opt.selected = true;
	    opt.innerHTML = languages[key];
	    s.appendChild(opt);
	}
	function onChange() {
	    var div = document.getElementById('lang-selector-area');
	    var select = div.childNodes[0];
	    var n = select.selectedIndex;
	    var opt = select.childNodes[n];
	    var key = opt.value;
	    if (key) {
		key += '/';
		if (key == 'ja/') key = '';
		window.location = '/mobile/' + key;
	    }
	}
	s.addEventListener('change', onChange);
	document.getElementById('lang-selector-area').appendChild(s);
    }
    window.addEventListener('load', setupLangSelector);
})();
