MD := $(shell ls *.md | grep -v README | sort -t . -k 1,1n -k 2,2n | sed 's/ /\\&/g')
MD_IN_SHELL := $(shell echo "$(MD)" | sed 's/[()]/\\&/g')

html: index.html

docx: 日志规范.docx

index.html 日志规范.docx: pandoc.css $(MD)
	pandoc --toc --css pandoc.css -s -o $@ $(MD_IN_SHELL)

.PHONY: pdf docx
