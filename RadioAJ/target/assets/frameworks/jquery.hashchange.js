!function($,e,b){function a(j){return j=j||location.href,"#"+j.replace(/^[^#]*#?(.*)$/,"$1")}var f,c="hashchange",h=document,g=$.event.special,i=h.documentMode,d="on"+c in e&&(i===b||i>7);$.fn[c]=function(j){return j?this.bind(c,j):this.trigger(c)},$.fn[c].delay=50,g[c]=$.extend(g[c],{setup:function(){return d?!1:void $(f.start)},teardown:function(){return d?!1:void $(f.stop)}}),f=function(){function n(){var r=a(),q=o(m);r!==m?(l(m=r,q),$(e).trigger(c)):q!==m&&(location.href=location.href.replace(/#.*/,"")+q),p=setTimeout(n,$.fn[c].delay)}var p,j={},m=a(),k=function(q){return q},l=k,o=k;return j.start=function(){p||n()},j.stop=function(){p&&clearTimeout(p),p=b},$.browser.msie&&!d&&function(){var q,r;j.start=function(){q||(r=$.fn[c].src,r=r&&r+a(),q=$('<iframe tabindex="-1" title="empty"/>').hide().one("load",function(){r||l(a()),n()}).attr("src",r||"javascript:0").insertAfter("body")[0].contentWindow,h.onpropertychange=function(){try{"title"===event.propertyName&&(q.document.title=h.title)}catch(s){}})},j.stop=k,o=function(){return a(q.location.href)},l=function(v,s){var u=q.document,t=$.fn[c].domain;v!==s&&(u.title=h.title,u.open(),t&&u.write('<script>document.domain="'+t+'"</script>'),u.close(),q.location.hash=v)}}(),j}()}(jQuery,this);