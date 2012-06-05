<%!
    require_jquery = False
    javascript = None
    js_callback = ''
%><!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <title>i3 - improved tiling wm</title>
        <link rel="icon" type="image/png" href="/favicon.png">
        <link rel="stylesheet" href="/css/style.css" type="text/css" media="screen">
        <link rel="publisher" href="https://plus.google.com/113555191861605339299">
        <meta name="description" content="i3 is a dynamic tiling window manager with clean, readable and documented code, featuring extended Xinerama support, usage of libxcb instead of xlib and several improvements over wmii">
        <meta name="keywords" content="i3, window, manager, tiling, keyboard, wmii, x11, xcb, xinerama, utf8">
        <meta name="author" content="i3 developers">
% if self.attr.javascript:
        <script type="text/javascript">
function loadjs() {
% if not self.attr.require_jquery:
    var element = document.createElement("script");
    element.src = "/js/${self.attr.javascript}";
    document.body.appendChild(element);
% else:
    var jquery_done = false,
        script_done = false;
    var head = document.getElementsByTagName('head')[0];

    var element = document.createElement("script");
    element.src = "/js/jquery.1.6.2.min.js";
    element.onload = element.onreadystatechange = function() {
        if (!jquery_done && (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete')) {
            jquery_done = true;
            if (script_done) {
                ${self.attr.js_callback}
            }
            element.onload = element.onreadystatechange = null;
        }
    };
    document.body.appendChild(element);

    var script = document.createElement("script");
    script.src = "/js/${self.attr.javascript}";
    script.onload = script.onreadystatechange = function() {
        if (!script_done && (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete')) {
            script_done = true;
            if (jquery_done) {
                ${self.attr.js_callback}
            }
            script.onload = script.onreadystatechange = null;
        }
    };
    document.body.appendChild(script);

% endif
}

if (window.addEventListener)
    window.addEventListener("load", loadjs, false);
else if (window.attachEvent)
    window.attachEvent("onload", loadjs);
else window.onload = loadjs;
        </script>
%endif
    </head>
    <body>
        <div id="main">
            <a href="/"><h1 id="title">i3 - improved tiling WM</h1></a>
			<ul id="nav">
<%
	menu = [
		[ "/docs", "Docs" ],
		[ "/screenshots", "Screens" ],
		[ "http://faq.i3wm.org/", "FAQ" ],
		[ "/contact", "Contact" ],
		[ "http://bugs.i3wm.org/", "Bugs" ]
	]
%>
% for link, title in menu:
				<li><a
% if self.attr.section == title.lower():
				style="border-bottom: 2px solid #fff"
% endif
				href="${link}">${title}</a></li>
% endfor
			</ul>
	<br style="clear: both">
	    ${next.body()}
        </div>

	<div id="footer" lang="de">
	© 2009-2012 Michael Stapelberg, <a href="/impress.html">Impressum</a>
	</div>
    </body>
</html>
