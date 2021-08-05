#!/usr/bin/env bash

target="$1"

IFS=$'\n' files=($(ls *.md | grep -v README | sort -t . -k 1,1n -k 2,2n))

pandoc --toc --css pandoc.css --metadata title="..." -s -o "$target" "${files[@]}"
