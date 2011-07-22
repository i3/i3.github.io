<%!
	section = "tree"
%>
<%inherit file="_templates/i3.mako" />
<div id="content">

<div style="background-color: white; float:right; width: 250px; border: 1px solid black; padding: .5em; margin-top: 100px; margin-right: 20px; text-align: center; color: black; -moz-border-radius: 3px; border-radius: 3px; -moz-box-shadow: 3px 3px 3px black; -webkit-box-shadow: 3px 3px 3px black; box-shadow: 3px 3px 3px black;">
Download<br>
<a href="/downloads/i3-tree-pr4.tar.bz2">i3-tree-pr4.tar.bz2</a><br>
(408 KB)
</div>

<h2>After a lot of bugfixes,</h2>

<p>
we are happy to release the fourth preview version of i3-tree!
</p>

<p>
This release is a release candidate for i3 version 4.0.
</p>


<h2>What works right now</h2>

<ul>
<li>Basic window management, navigation, moving</li>
<li>Fullscreen mode, correct aspect ratio</li>
<li>Stacked/Tabbed layout, floating mode</li>
<li>Splitting (for fancy layouts), resizing</li>
<li>Restarts (preserving the layout), crash handler</li>
<li>RandR changes, keyboard layout changes</li>
<li>Dock clients</li>
<li>Assignments</li>
<li>Configfile compatibility</li>
<li>i3bar, get it from <a href="http://git.merovius.de/">git.merovius.de</a></li>
</ul>

<h2>Feedback</h2>

<p>
The goal of this release is to gather feedback. We want to know how you feel
about the changes and what suggestions, improvements or questions you have.
Please use our <a href="http://i3wm.org/contact/">IRC channel</a>, <a
href="http://bugs.i3wm.org/">our bugtracker</a> (double-check that
you specify version "tree" for reports), <a
href="http://i3wm.org/contact/">our mailing list</a> or <a
href="http://twitter.com/i3wm">Twitter</a>/<a
href="http://identi.ca/i3wm">identica</a>.
</p>

<p>
To ensure that the next i3 release will work just fine for you, please check
that <em>-tree</em> does what you expect it to.
</p>

<h2>Thanks</h2>

<p>
I want to thank Merovius for convincing me of the possibility to use a tree
data structure for i3.
</p>

<p>
Furthermore, we would not be able to provide this release without the help of
fernandotcl (thanks for a lot of patches!) and the help of all testers,
especially mseed.
</p>

</div>
