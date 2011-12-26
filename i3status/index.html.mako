<%!
	section = "i3status"
%>
<%inherit file="_templates/i3.mako" />
<div id="content">

<h1>i3status</h1>

<p>
  i3status is a small program (about 1500 SLOC) for generating a status bar
  for dzen2, xmobar or similar programs. It is designed to be very efficient by
  issuing a very small number of system calls, as one generally wants to update
  such a status line every second. This ensures that even under high load, your
  status bar is updated correctly. Also, it saves a bit of energy by not hogging
  your CPU as much as spawning the corresponding amount of shell commands would.
</p>

<h2>Releases</h2>

<ul>
  <li><a href="/i3status/i3status-2.4.tar.bz2">i3status-2.4.tar.bz2</a>
  (<a href="/i3status/i3status-2.4.tar.bz2.asc">GPG signature</a>, 2011-12-27)</li>
  <li><a href="/i3status/i3status-2.3.tar.bz2">i3status-2.3.tar.bz2</a>
  (<a href="/i3status/i3status-2.3.tar.bz2.asc">GPG signature</a>, 2011-07-21)</li>
  <li><a href="/i3status/i3status-2.2.tar.bz2">i3status-2.2.tar.bz2</a>
  (<a href="/i3status/i3status-2.2.tar.bz2.asc">GPG signature</a>, 2010-09-23)</li>
  <li><a href="/i3status/i3status-2.1.tar.bz2">i3status-2.1.tar.bz2</a>
  (<a href="/i3status/i3status-2.1.tar.bz2.asc">GPG signature</a>, 2010-04-11)</li>
  <li><a href="/i3status/i3status-2.0.tar.bz2">i3status-2.0.tar.bz2</a>
  (<a href="/i3status/i3status-2.0.tar.bz2.asc">GPG signature</a>, 2009-10-27)</li>
  <li><a href="/i3status/i3status-1.2.tar.bz2">i3status-1.2.tar.bz2</a>
  (<a href="/i3status/i3status-1.2.tar.bz2.asc">GPG signature</a>, 2009-06-21)</li>
  <li><a href="/i3status/i3status-1.1.tar.bz2">i3status-1.1.tar.bz2</a>
  (<a href="/i3status/i3status-1.1.tar.bz2.asc">GPG signature</a>, 2009-06-17)</li>
  <li><a href="/i3status/i3status-1.0.tar.bz2">i3status-1.0.tar.bz2</a></li>
</ul>

<h2>Documentation</h2>

<p>
  The documentation for i3status is its manpage. You can also <a
  href="/i3status/manpage.html">view the manpage online</a>.
</p>

<h2>Development</h2>

<p>
  i3status is currently developed at <a href="http://code.i3wm.org/i3status" title="cgit">
  http://code.i3wm.org/i3status</a>. Checkouts of the master branch are intended to
  be stable and working all the time. Integration of new features happens in a separate branch.
</p>

</div>
