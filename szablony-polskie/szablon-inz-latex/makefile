
f=praca
minted=-shell-escape 

.PHONY : short
.PHONY : clean

pdflatex : $(f).tex
	pdflatex $(minted) -synctex=1 $(f)
	biber $(f)
	pdflatex $(minted) -synctex=1 $(f)
	pdflatex $(minted) -synctex=1 $(f)

xelatex : $(f).tex
	xelatex $(minted) -synctex=1 $(f)
	biber $(f)
	xelatex $(minted) -synctex=1 $(f)
	xelatex $(minted) -synctex=1 $(f)


$(f).pdf : $(f).tex
	pdflatex $(minted) -synctex=1 $(f)
	biber $(f)
	pdflatex $(minted) -synctex=1 $(f)
	pdflatex $(minted) -synctex=1 $(f)

short : $(f).tex
	pdflatex $(minted) -synctex=1 $(f)

clean : 
	for p in *.aux *.bbl *.bcf *.blg *.lof *.log *.lot *.out *.toc *.xml *.gz  ; \
	do \
		if [ -f $$p ] ; then rm $$p; fi; \
	done;  \
	if [ -d *minted* ] ; then rm -r *minted*; fi; 
