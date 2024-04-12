# Makefile for bibliography management with biber, comes from PFE

clean:
	rm *.aux *.toc *.log *.bbl *.bcf *.blg *.run.xml *.out *.nav *.snm *.lot *.lof

file:
	lualatex file.tex
	biber file
	lualatex file.tex
	make clean
