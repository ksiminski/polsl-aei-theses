#!/bin/bash

katalog=`pwd`
minted=-shell-escape 

#if false ; then 

# kompilacja wszystkich szablonow
for f in `find . -type d -name *latex` ; do # wyluskanie nazw katalogow
   echo $f ;    # kontrolne wypisanie nazwy katalogow
	cd $f;       # przejscie do katalogu
	plik=`basename *.tex .tex` ;  # zapamietanie nazwy pliku tex
   xelatex $minted $plik  # kompilacja 
   biber    $plik  # kompilacja bibliografii
   xelatex $minted $plik
   xelatex $minted $plik
   rm *.toc *.xml *.out *.lot *.log *.lof *.bcf *.aux *.blg *.bbl *.gz *.xml *.bcf # troche porzadku
   rm -r _minted-$plik
 
   cd $katalog;  # powrot do katalogu wyjsciowego
done; 

#fi; 

for f in `find . -type d -name *latex` ; do # wyluskanie nazw katalogow
   echo $f ;  # wypisanie kontrolne nazwy katalogu
   nazwa=`basename $f` ;  # zapamietanie nazwy katalogu (bez sciezki)
	cd $f;                 # przejscie do katalogu
	zip -r $nazwa.zip . ;  # archiwizacja szablonu
	mv *.zip $katalog ;    # przeniesinie archiwum do katalogu wyjsciowego
	cd $katalog;           # powrot do katalogu wyjsciowego
done; 
