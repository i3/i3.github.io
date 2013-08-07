
all: hacking-howto.html debugging.html debugging-release-version.html i3bar-protocol.html repositories.html buildbot.html userguide.html ipc.html multi-monitor.html wsbar.html i3status.html i3.html i3-config-wizard.html i3-nagbar.html i3-migrate-config-to-v4.html i3-msg.html testsuite.html gsoc2013-ideas.html

gsoc2013-ideas.html: gsoc2013-ideas
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

hacking-howto.html: hacking-howto
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

testsuite.html: testsuite
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

debugging.html: debugging
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -n $<

debugging-release-version.html: debugging-release-version
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -n $<

i3bar-protocol.html: i3bar-protocol
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -n $<

repositories.html: repositories
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -n $<

buildbot.html: buildbot
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

userguide.html: userguide
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

ipc.html: ipc
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

multi-monitor.html: multi-monitor
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

wsbar.html: wsbar
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

i3status.html: i3status.man
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

%.html: %.man
	asciidoc -a linkcss -a stylesdir=/css -a scriptsdir=/js --backend=xhtml11 -f conf/i3html.conf -a toc -n $<

clean:
	rm -f */*.{aux,log,toc,bm,pdf,dvi}
	rm -f *.log *.html
