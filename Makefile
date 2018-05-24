epstopdf:=	`which epstopdf`

texfiles:=	$(texfiles) $(wildcard *.tex)
texfiles:=  $(sort $(texfiles))
svgfiles:=	$(wildcard *.svg)
pdffiles:=	$(texfiles:.tex=.pdf)



all: cv-fr.pdf cv-en.pdf

%.pdf: %.tex
	rubber -m pdftex $<

cv-fr.tex: myCV.rb cv.rb
	ruby $<

cv-en.tex: myCV_en.rb cv.rb
	ruby $<


clean:
	rm -f cv-fr.pdf cv-en.pdf  *.toc *.aux *.bbl *.blg *.dvi *.log *.out cv-fr.tx cv-en.tex

install: cv-fr.pdf cv-en.pdf
	scp cv-fr.pdf cv-en.pdf  index.html index_fr.html cv.css cv-pic.jpg www:www-nico/
	rsync -aPh fuzzy_dir/ www:www-nico/
