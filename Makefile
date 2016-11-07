pdf:
	xelatex jakub-kadlcik-cv.tex

image:
	docker build -t frostyx-cv .

dockerized: image
	docker run -it -v `pwd`:/src:Z frostyx-cv
