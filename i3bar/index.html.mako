<%!
	section = "i3bar"
%>
<%inherit file="_templates/i3.mako" />
<div id="content">

<h1>i3bar</h1>

<p>
  i3bar is an xcb- and libev-based status- and workspace-bar. It is best
  thought of as an replacement for the old <tt>i3-wsbar(1)</tt> +
  <tt>dzen2(1)</tt>-combination. It creates a workspace-bar for every active
  output ("screen") and displays a piped in statusline rightaligned on every
  bar.
</p>

<p>
  It does not sample any status-information itself, so you still need a program
  like <tt>i3status(1)</tt> or <tt>conky(1)</tt> for that.
</p>

<p>
  i3bar does not support any color or other markups, so stdin should be plain
  utf8, one line at a time. If you use <tt>i3status(1)</tt>, you therefore
  should specify 'output_format = none' in the general section of its config
  file.
</p>

<!--
<h2>Releases</h2>

<ul>
  <li><a href="/i3status/i3status-2.3.tar.bz2">i3status-2.3.tar.bz2</a>
  (<a href="/i3status/i3status-2.3.tar.bz2.asc">GPG signature</a>, 2011-07-21)</li>
</ul>
-->

<h2>Documentation</h2>

<p>
  The documentation for i3bar is its manpage. You can also <a
  href="/i3bar/manpage.html">view the manpage online</a>.
</p>

<h2>Development</h2>

<p>
  i3bar is currently developed at <a href="http://git.merovius.de/i3bar" title="cgit">
  http://git.merovius.de/i3bar</a>. Checkouts of the master branch are intended to
  be stable and working all the time. Integration of new features happens in a
  separate branch.
</p>

</div>
