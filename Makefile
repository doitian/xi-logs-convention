README.md:
	echo '# 日志规范' > README.md.tmp
	echo >> README.md.tmp
	ls *.md | grep -v README | sort -t . -k 1,1n -k 2,2n | perl -pe 'my ($$id, $$name) = /^([0-9.]+ )(.*)\.md/; $$escape = $$name =~ s/[\(\)]/\\$$&/rg; $$_ = $$id . "[" . $$name . "](" . $$id . $$escape . ".md)\n"; while(s/^( *)\d+\.(\d)/    $$1$$2/) {}' >> README.md.tmp
	cp -f README.md.tmp README.md
	rm -f README.md.tmp

.PHONY: README.md
