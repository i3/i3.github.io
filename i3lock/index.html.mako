<%!
	section = "i3lock"
%>
<%inherit file="_templates/i3.mako" />
<div id="content">

<h1>i3lock</h1>

<p>
  i3lock is a simple screen locker like slock. After starting it, you will see
  a white screen (you can configure the color/an image). You can return to your
  screen by entering your password.
</p>

<h2>Improvements</h2>

<ul>
  <li>
    i3lock forks, so you can combine it with an alias to suspend to RAM (run
    "i3lock &amp;&amp; echo mem &gt; /sys/power/state" to get a locked screen
    after waking up your computer from suspend to RAM)
  </li>
  <li>
    You can specify either a background color or a PNG image which will be
    displayed while your screen is locked.
  </li>
  <li>
    You can specify whether i3lock should bell upon a wrong password.
  </li>
  <li>
    i3lock uses PAM and therefore is compatible with LDAP etc.
  </li>
</ul>


<h2>Releases</h2>

<ul>
  <li>
    <a href="/i3lock/i3lock-2.3.tar.bz2">i3lock-2.3.tar.bz2</a> (2012-03-15,
    <a href="/i3lock/i3lock-2.3.tar.bz2.asc">GPG signature</a>)
  </li>
  <li>
    <a href="/i3lock/i3lock-2.2.tar.bz2">i3lock-2.2.tar.bz2</a> (2011-11-06,
    <a href="/i3lock/i3lock-2.2.tar.bz2.asc">GPG signature</a>)
  </li>
  <li>
    <a href="/i3lock/i3lock-2.1.tar.gz">i3lock-2.1.tar.gz</a> (2011-03-13,
    <a href="/i3lock/i3lock-2.1.tar.gz.asc">GPG signature</a>)
  </li>
  <li>
    <a href="/i3lock/i3lock-2.0.tar.gz">i3lock-2.0.tar.gz</a> (2010-09-05,
    <a href="/i3lock/i3lock-2.0.tar.gz.asc">GPG signature</a>)
  </li>
  <li><a href="/i3lock/i3lock-1.0.tar.gz">i3lock-1.0.tar.gz</a> (2009-05-10,
  <a href="/i3lock/i3lock-1.0.tar.gz.asc">GPG signature</a>)</li>
  <li><a href="/i3lock/i3lock-0.9.tar.gz">i3lock-0.9.tar.gz</a></li>
</ul>

<h2>Development</h2>

<p>
  i3lock is currently developed at <a href="http://code.i3wm.org/i3lock" title="cgit">
  http://code.i3wm.org/i3lock</a>. Checkouts of the master branch are intended to
  be stable and working all the time. Integration of new features happens in a separate branch.
</p>

</div>
