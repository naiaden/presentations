filename=baco

all:
	notes
	slides
	both

notes: 
	pdflatex ${filename}-notes.tex

slides:
	pdflatex ${filename}-slides.tex

both:
	pdflatex ${filename}-both.tex

read:
	open ${filename}-both.pdf

clean:
	rm -f ${filename}*.{ps,pdf,log,aux,out,dvi,bbl,blg,nav}
