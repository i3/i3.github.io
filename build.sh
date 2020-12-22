#!/bin/sh
asciidoctor -B _docs -D ../docs -a linkcss -a stylesdir=../css -a stylesheet=docs.css -a toc=left '**/*.adoc'

