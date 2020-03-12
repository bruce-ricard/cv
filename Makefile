all: cv.pdf

cv.pdf: cv.tex  education.tex  experience.tex  languages.tex  other.tex  skills.tex  summary.tex
	pdflatex cv.tex

clean:
	@rm -f cv.aux cv.out cv.log

.PHONY: clean all
