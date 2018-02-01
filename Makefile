
clean:
	rm -f resume.log resume.out resume.pdf resume.aux

test:
	cd examples/ ; for f in *.tex; do xelatex $$f; done

build:
	make clean && xelatex resume.tex

preview:
	make build && open resume.pdf
