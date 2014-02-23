(function() {
    var o = function(d) { return navigator.userAgent.indexOf(d) > 0; };
    if (o('iPhone') || o('iPod') || o('Android')) {
	path = location.pathname;
	location.href = '/mobile' + path;
    }
})();
