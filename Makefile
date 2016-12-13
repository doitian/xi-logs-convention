NAME := 日志规范

html: index.html

docx: $(NAME).docx

pdf: $(NAME).pdf

index.html $(NAME).docx $(NAME).pdf:
	/usr/bin/env bash build.sh $@

.PHONY: index.html $(NAME).docx
