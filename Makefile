BASENAME=aimran

cv:$(BASENAME)_cv.pdf clean

busi:$(BASENAME)_business_resume.pdf


# Add some useful inference rules for LaTeX development.
.SUFFIXES: .doc .sty .tex .dvi .ps .pdf 


.tex.dvi:
	latex $<
	latex $<

.dvi.ps:
	dvips -t letter $< -o $*.ps

.ps.pdf:
	ps2pdf $< $*.pdf


REMOVE = *.aux *.bbl *.blg *.log *.ps *.dvi *.out

clean:
	rm -f $(REMOVE)

