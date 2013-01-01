<%!
	section = "downloads"
	javascript = 'downloads.min.js'
	require_jquery = True
	js_callback = 'initDownloads();'
%>
<%inherit file="_templates/i3.mako" />
<div id="content">

<h2>Distributions</h2>

<p>
Please use the i3 packages provided by the distribution you are using. i3 is
currently distributed in the following operating systems/distributions:
</p>

<div id="distributions">
<%
	distros = [
		[
		  "Debian GNU/Linux",
		  "http://packages.debian.org/sid/i3",
		  "/img/debian.png",
		  93
		],
		[
		  "Arch Linux",
		  "http://www.archlinux.org/packages/community/x86_64/i3-wm/",
		  "/img/archlinux.png",
		  75
		],
		[
		  "Gentoo Linux",
		  "http://packages.gentoo.org/package/x11-wm/i3",
		  "/img/gentoo-logo.png",
		  79
		],
		[
		  "Ubuntu Linux",
		  "http://packages.ubuntu.com/i3",
		  "/img/ubuntu.png",
		  75
		],
		[
		  "FreeBSD",
		  "http://www.freebsd.org/cgi/cvsweb.cgi/ports/x11-wm/i3/",
		  "/img/freebsd.png",
		  59
		],
		[
		  "NetBSD",
		  "http://pkgsrc.se/wip/i3",
		  "/img/netbsd_logo.png",
		  56
		],
		[
		  "OpenBSD",
		  "http://www.openbsd.org/cgi-bin/cvsweb/ports/x11/i3/",
		  "/img/Openbsd2.png",
		  49
		],
		[
		  "openSUSE",
		  "http://software.opensuse.org/package/i3",
		  "/img/opensuse.png",
		  95
		],
		[
		  "Mageia",
		  "http://mageia.madb.org/package/show/application/0/name/i3",
		  "/img/mageia.png",
		  85
		],
		[
		  "Fedora",
		  "https://admin.fedoraproject.org/pkgdb/acls/name/i3",
		  "/img/fedora.png",
		  75
		],
		[
		  "Exherbo",
		  "http://git.exherbo.org/summer/packages/x11-wm/i3/index.html",
		  "/img/exherbo.svg",
		  85
		],
		[
		  "Pibang Linux",
		  "http://pibanglinux.org/",
		  "/img/pibang.png",
		  61
		],

	]

	c = 0
%>
% for title, link, img, height in distros:
<div style="display: inline; min-width: 100px"><a title="i3 in ${title}" href="${link}"><img src="${img}" width="75" height="${height}" alt="${title}" title="i3 in ${title}"></a></div>
<% c += 1 %>
% if c % 6 == 0:
<br>
% endif
% endfor
</div>

<p>
We also provide <a href="/docs/repositories.html">Debian and Ubuntu repositories</a> with up-to-date packages.
</p>

<h2>Downloads</h2>

<p>
  The current stable version is 4.4.
</p>

<p>
  <strong>IMPORTANT:</strong> If you use the nVidia binary driver, ensure you
  are using version 302.17 or newer. Read <a
  href="/docs/multi-monitor.html">this document</a> for an explanation and how
  to enable the work-around for older versions.
</p>

<table width="100%" id="downloads">
  <thead>
  <tr>
    <th>Version</th>
    <th>Download</th>
    <th>Size</th>
    <th>Signature</th>
    <th>Release date</th>
    <th>Release notes</th>
  </tr>
  </thead>

  <tbody>
  <tr>
    <td>4.4</td>
    <td><a href="/downloads/i3-4.4.tar.bz2">i3-4.4.tar.bz2</a></td>
    <td>864 KiB</td>
    <td><a href="/downloads/i3-4.4.tar.bz2.asc">signature</a></td>
    <td>2012-12-12</td>
    <td><a href="/downloads/RELEASE-NOTES-4.4.txt">release notes</a></td>
  </tr>

  <tr>
    <td>4.3</td>
    <td><a href="/downloads/i3-4.3.tar.bz2">i3-4.3.tar.bz2</a></td>
    <td>833 KiB</td>
    <td><a href="/downloads/i3-4.3.tar.bz2.asc">signature</a></td>
    <td>2012-09-19</td>
    <td><a href="/downloads/RELEASE-NOTES-4.3.txt">release notes</a></td>
  </tr>

  <tr>
    <td>4.2</td>
    <td><a href="/downloads/i3-4.2.tar.bz2">i3-4.2.tar.bz2</a></td>
    <td>741 KiB</td>
    <td><a href="/downloads/i3-4.2.tar.bz2.asc">signature</a></td>
    <td>2012-04-25</td>
    <td><a href="/downloads/RELEASE-NOTES-4.2.txt">release notes</a></td>
  </tr>

  <tr>
    <td>4.1.2</td>
    <td><a href="/downloads/i3-4.1.2.tar.bz2">i3-4.1.2.tar.bz2</a></td>
    <td>550 KiB</td>
    <td><a href="/downloads/i3-4.1.2.tar.bz2.asc">signature</a></td>
    <td>2012-01-27</td>
    <td><a href="/downloads/RELEASE-NOTES-4.1.2.txt">release notes</a></td>
  </tr>

  <tr>
    <td>4.1.1</td>
    <td><a href="/downloads/i3-4.1.1.tar.bz2">i3-4.1.1.tar.bz2</a></td>
    <td>551 KiB</td>
    <td><a href="/downloads/i3-4.1.1.tar.bz2.asc">signature</a></td>
    <td>2011-12-24</td>
    <td><a href="/downloads/RELEASE-NOTES-4.1.1.txt">release notes</a></td>
  </tr>

  <tr>
    <td>4.1</td>
    <td><a href="/downloads/i3-4.1.tar.bz2">i3-4.1.tar.bz2</a></td>
    <td>551 KiB</td>
    <td><a href="/downloads/i3-4.1.tar.bz2.asc">signature</a></td>
    <td>2011-11-11</td>
    <td><a href="/downloads/RELEASE-NOTES-4.1.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>4.0.2</td>
    <td><a href="/downloads/i3-4.0.2.tar.bz2">i3-4.0.2.tar.bz2</a></td>
    <td>465 KiB</td>
    <td><a href="/downloads/i3-4.0.2.tar.bz2.asc">signature</a></td>
    <td>2011-08-28</td>
    <td><a href="/downloads/RELEASE-NOTES-4.0.2.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>4.0.1</td>
    <td><a href="/downloads/i3-4.0.1.tar.bz2">i3-4.0.1.tar.bz2</a></td>
    <td>462 KiB</td>
    <td><a href="/downloads/i3-4.0.1.tar.bz2.asc">signature</a></td>
    <td>2011-08-01</td>
    <td><a href="/downloads/RELEASE-NOTES-4.0.1.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>4.0</td>
    <td><a href="/downloads/i3-4.0.tar.bz2">i3-4.0.tar.bz2</a></td>
    <td>462 KiB</td>
    <td><a href="/downloads/i3-4.0.tar.bz2.asc">signature</a></td>
    <td>2011-07-31</td>
    <td><a href="/downloads/RELEASE-NOTES-4.0.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.ε-bf3</td>
    <td><a href="/downloads/i3-3.e-bf3.tar.bz2">i3-3.e-bf3.tar.bz2</a></td>
    <td>353 KiB</td>
    <td><a href="/downloads/i3-3.e-bf3.tar.bz2.asc">signature</a></td>
    <td>2011-05-08</td>
    <td><a href="/downloads/RELEASE-NOTES-3.e-bf3.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.ε-bf2</td>
    <td><a href="/downloads/i3-3.e-bf2.tar.bz2">i3-3.e-bf2.tar.bz2</a></td>
    <td>285 KiB</td>
    <td><a href="/downloads/i3-3.e-bf2.tar.bz2.asc">signature</a></td>
    <td>2011-01-19</td>
    <td><a href="/downloads/RELEASE-NOTES-3.e-bf2.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.ε-bf1</td>
    <td><a href="/downloads/i3-3.e-bf1.tar.bz2">i3-3.e-bf1.tar.bz2</a></td>
    <td>285 KiB</td>
    <td><a href="/downloads/i3-3.e-bf1.tar.bz2.asc">signature</a></td>
    <td>2010-06-09</td>
    <td><a href="/downloads/RELEASE-NOTES-3.e-bf1.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.ε</td>
    <td><a href="/downloads/i3-3.e.tar.bz2">i3-3.e.tar.bz2</a></td>
    <td>271 KiB</td>
    <td><a href="/downloads/i3-3.e.tar.bz2.asc">signature</a></td>
    <td>2010-03-30</td>
    <td><a href="/downloads/RELEASE-NOTES-3.e.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.δ-bf1</td>
    <td><a href="/downloads/i3-3.d-bf1.tar.bz2">i3-3.d-bf1.tar.bz2</a></td>
    <td>153 KiB</td>
    <td><a href="/downloads/i3-3.d-bf1.tar.bz2.asc">signature</a></td>
    <td>2009-12-21</td>
    <td><a href="/downloads/RELEASE-NOTES-3.d-bf1.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.δ</td>
    <td><a href="/downloads/i3-3.d.tar.bz2">i3-3.d.tar.bz2</a></td>
    <td>153 KiB</td>
    <td><a href="/downloads/i3-3.d.tar.bz2.asc">signature</a></td>
    <td>2009-11-09</td>
    <td><a href="/downloads/RELEASE-NOTES-3.d.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.γ</td>
    <td><a href="/downloads/i3-3.c.tar.bz2">i3-3.c.tar.bz2</a></td>
    <td>107 KiB</td>
    <td><a href="/downloads/i3-3.c.tar.bz2.asc">signature</a></td>
    <td>2009-08-19</td>
    <td><a href="/downloads/RELEASE-NOTES-3.c.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.β</td>
    <td><a href="/downloads/i3-3.b.tar.bz2">i3-3.b.tar.bz2</a></td>
    <td>96 KiB</td>
    <td><a href="/downloads/i3-3.b.tar.bz2.asc">signature</a></td>
    <td>2009-06-26</td>
    <td><a href="/downloads/RELEASE-NOTES-3.b.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.α-bf2</td>
    <td><a href="/downloads/i3-3.a-bf2.tar.bz2">i3-3.a-bf2.tar.bz2</a></td>
    <td>65 KiB</td>
    <td><a href="/downloads/i3-3.a-bf2.tar.bz2.asc">signature</a></td>
    <td>2009-05-03</td>
    <td><a href="/downloads/RELEASE-NOTES-3.a-bf2.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.α-bf1</td>
    <td><a href="/downloads/i3-3.a-bf1.tar.bz2">i3-3.a-bf1.tar.bz2</a></td>
    <td>65 KiB</td>
    <td><a href="/downloads/i3-3.a-bf1.tar.bz2.asc">signature</a></td>
    <td>2009-05-03</td>
    <td><a href="/downloads/RELEASE-NOTES-3.a-bf1.txt">release notes</a></td>
  </tr>

  <tr class="oldversion">
    <td>3.α</td>
    <td><a href="/downloads/i3-3.a.tar.bz2">i3-3.a.tar.bz2</a></td>
    <td>50 KiB</td>
    <td><a href="/downloads/i3-3.a.tar.bz2.asc">signature</a></td>
    <td>2009-03-15</td>
    <td><a href="/downloads/RELEASE-NOTES-3.a.txt">release notes</a></td>
  </tr>
  </tbody>
</table>

<a name="development-version"></a>
<h2>Development version</h2>

<p>
  Use <a href="http://git-scm.com/">git</a> to follow the latest changes or
  <a href="http://code.i3wm.org/i3">view them on this webpage</a>. This command checks out the 'master'
  branch:
</p>

<pre>
  $ git clone git://code.i3wm.org/i3
</pre>

<p>
  The 'master' branch is the current stable version plus bugfixes.<br>
  The 'next' branch is the next version, yet to be released. Use <tt>git
  checkout next</tt> to switch to the 'next' branch.
</p>

<p>
  If you prefer to download a tarball, or if you cannot use git for whatever reason,
  you may download the current master branch from
  <a href="http://code.i3wm.org/i3/snapshot/i3-master.tar.bz2">
    http://code.i3wm.org/i3/snapshot/i3-master.tar.bz2
  </a>
</p>

<h2>Announce mailing list</h2>

<p>
  If you want to be notified when a new version of i3 is released, please subscribe
  to the announce mailing list by sending a mail to <code>i3-announce-subscribe@i3.zekjur.net</code>
</p>


</div>
