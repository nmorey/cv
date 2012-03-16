epstopdf:=	`which epstopdf`

texfiles:=	$(texfiles) $(wildcard *.tex)
texfiles:=  $(sort $(texfiles))
svgfiles:=	$(wildcard *.svg)
pdffiles:=	$(texfiles:.tex=.pdf)



all: cv.pdf cv-anglais.pdf

%.pdf: %.tex
	rubber -m pdftex $<

cv.tex: myCV.rb cv.rb
	ruby $<

cv-anglais.tex: myCV_en.rb cv.rb
	ruby $<


clean:
	rm -f cv.pdf cv-anglais.pdf  *.toc *.aux *.bbl *.blg *.dvi *.log *.out 

install: cv.pdf cv-anglais.pdf
	scp cv.pdf cv-anglais.pdf  index.html index_fr.html cv.css cv-pic.jpg www:www/