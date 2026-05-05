wiki:
	rm -Rf ./{fr,ko,en,es,ar}
	tar -xzf ../wiki*.tar.gz
	-mkdir fr
	-mv * fr
	mv fr/Makefile .
	mv fr/cleanup.sh .
	mv fr/ar ar
	mv fr/en en
	mv fr/es es
	mv fr/ko ko
	find . -name *.html -exec rm {} ';'
	-mv ko/home.md ko/index.md
	-mv en/home.md en/index.md
	-mv es/home.md es/index.md
	-mv ar/home.md ar/index.md
	-mv fr/home.md fr/index.md
	find . -name *.md -exec sed -i 's/\/home.md/\/index.md/g' {} ';'
	source cleanup.sh

