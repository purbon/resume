.PHONY: pdf
pdf:
	asciidoctor -r asciidoctor-pdf -b pdf -a pdf-stylesdir=themes -a pdf-style=base src/resume-en.adoc -D .

.PHONY: html
html:
	asciidoctor src/resume-en.adoc -D .

.PHONY: clean
clean:
	rm *.pdf
	rm *.html
