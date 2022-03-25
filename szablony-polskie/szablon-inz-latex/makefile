
f=praca
minted=-shell-escape 

.PHONY : short

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

