(function() {
    var o = function(d) { return navigator.userAgent.indexOf(d) > 0; };
    if (o('iPhone') || o('iPod') || o('Android')) location.href = './mobile/index.html';
})();
