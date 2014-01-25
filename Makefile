BASENAME=aimran

cv:$(BASENAME)_cv.pdf


pub:$(BASENAME)_pub.pdf


john:$(BASENAME)_resume_2pg.pdf

busi:$(BASENAME)_business_resume.pdf

#.tex.pdf: 
#	$(BASENAME).tex 
#	latex $(BASENAME).tex
#	latex $(BASENAME).tex
#	dvips -t letter -o $(BASENAME).ps $(BASENAME).dvi
#	ps2pdf $(BASENAME).ps $(BASENAME).pdf
#

# Add some useful inference rules for LaTeX development.
.SUFFIXES: .doc .sty .tex .dvi .ps .pdf 


.tex.dvi:
	latex $<
	latex $<

.dvi.ps:
	dvips -t letter $< -o $*.ps

.ps.pdf:
	ps2pdf $< $*.pdf


REMOVE = *.aux *.bbl *.blg *.log *.ps *.dvi 

clean:
	rm -f $(REMOVE)

