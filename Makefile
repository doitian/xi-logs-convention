NAME := 日志规范

html: docs/index.html

docx: docs/$(NAME).docx

pdf: docs/$(NAME).pdf

docs/index.html docs/$(NAME).docx docs/$(NAME).pdf:
	/usr/bin/env bash build.sh $@

all: html docx

clean:
	rm -f docs/*

.PHONY: html docx pdf all
