all: cv.pdf

cv.pdf:
	pdflatex cv.tex

clean:
	@rm -f cv.aux cv.out cv.log

.PHONY: clean all
