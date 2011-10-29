epstopdf:=	`which epstopdf`

texfiles:=	$(texfiles) $(wildcard *.tex)
texfiles:=  $(sort $(texfiles))
svgfiles:=	$(wildcard *.svg)
pdffiles:=	$(texfiles:.tex=.pdf)

rulesfile:=	rules.ini


all: pdf 

install: $(pdffiles)
	mkdir -p $(SHAREDIR)
	install -- $(pdffiles) $(SHAREDIR)

dvi: $(dvifiles)

pdf: $(pdffiles)

$(pdffiles): %.pdf : %.tex $(svgfiles:.svg=.eps) $(deps)
	echo "[epstopdf_new]" > $(rulesfile)
	echo "target = (.*)\.pdf" >> $(rulesfile)
	echo "source = \1.eps" >> $(rulesfile)
	echo "cost = 0" >> $(rulesfile)
	echo "rule = shell" >> $(rulesfile)
	echo 'command = perl '$(epstopdf)' --outfile=$$target $$source' >> $(rulesfile)
	echo 'message = converting $$source to PDF' >> $(rulesfile)
	rubber $(modulesopts)  -c "rules $(rulesfile)"  -d  $<

%.eps: %.svg
	inkscape -z --file=$< --export-eps=$@

touch:
	touch $(texfiles)

echo:
	@echo "texfiles:	$(texfiles)"
	@echo "dvifiles:	$(dvifiles)"
	@echo "clsfiles:	$(clsfiles)"

clean:
	rm -f $(texfiles:.tex=.ps) *.pdf rules.ini *.toc *.aux *.bbl *.blg *.dvi *.log *.out $(svgfiles:.svg=.pdf) $(svgfiles:.svg=.eps) $(indexfile) *.ilg *.ind $(deps) $(extra_clean)

