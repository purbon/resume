.PHONY: pdf
pdf:
#	 chronicles
	asciidoctor -r asciidoctor-pdf -b pdf -a pdf-theme=cv -a rouge-style=molokai src/resume-en.adoc -D .
 
.PHONY: html
html:
	asciidoctor src/resume-en.adoc -D .

.PHONY: web
web:
	asciidoctor src/resume-en-web.adoc -D .

.PHONY: bio_cat_pdf
bio_cat_pdf:
	asciidoctor -r asciidoctor-pdf -b pdf -a pdf-stylesdir=themes -a pdf-style=base src/bio-cat.adoc -D .

.PHONY: bio_cat_html
bio_cat_html:
	asciidoctor src/bio-cat.adoc -D .

.PHONY: clean
clean:
	rm *.pdf
	rm *.html
