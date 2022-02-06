
f=praca
minted=-shell-escape 

.PHONY : short

$(f).pdf : $(f).tex
	pdflatex $(minted) -synctex=1 $(f)
	biber $(f)
	pdflatex $(minted) -synctex=1 $(f)
	pdflatex $(minted) -synctex=1 $(f)

short : $(f).tex
	pdflatex $(minted) -synctex=1 $(f)

