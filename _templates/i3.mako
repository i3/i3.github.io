<%!

%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <title>i3 - improved tiling wm</title>
        <link rel="stylesheet" href="/css/style.css" type="text/css" media="screen" charset="utf-8" />
        <meta name="description" content="i3 is a dynamic tiling window manager with clean, readable and documented code, featuring extended Xinerama support, usage of libxcb instead of xlib and several improvements over wmii" />
        <meta name="keywords" content="i3, window, manager, tiling, keyboard, wmii, x11, xcb, xinerama, utf8" />
        <meta name="author" content="i3 developers" />
    </head>
    <body>
        <div id="main">
            <a href="/"><h1 id="title">i3 - improved tiling WM</h1></a>
			<ul id="nav">
<%
	menu = [
		[ "/docs", "Docs" ],
		[ "/screenshots", "Screens" ],
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

	<div id="footer">
	© 2009-2011 Michael Stapelberg, <a href="/impress.html">Impressum</a>
	</div>
    </body>
</html>
