README.md:
	echo '# 日志规范' > README.md.tmp
	echo >> README.md.tmp
	ls *.md | grep -v README | sort -t . -k 1,1n -k 2,2n | perl -pe 'while(s/^( *)\d+\.(\d)/    $$1$$2/) {}' | sed -e 's/^\( *[0-9][0-9]*\. \)\(.*\)\.md/\1[\2](\2.md)/' >> README.md.tmp
	cp -f README.md.tmp README.md
	rm -f README.md.tmp

.PHONY: README.md
