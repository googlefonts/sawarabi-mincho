browserNameIs = (deviceName...)->
  deviceName.map( (name) ->
    if navigator.userAgent.indexOf(name) > 0 then 1 else 9
  ).sort()[0] is 1

if browserNameIs 'iPhone', 'iPod', 'Android'
  location.href = "/mobile#{location.pathname}"
