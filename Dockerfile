FROM fedora:latest
MAINTAINER Jakub Kadlcik <frostyx@email.cz>

WORKDIR /src

RUN dnf -y install \
	texlive-xetex \
	texlive-collection-xetex \
	texlive-parskip \
	texlive-biblatex \
	texlive-lm-math \
	texlive-textpos \
	google-roboto-fonts \
	google-roboto-condensed-fonts \
	make
RUN dnf clean all

CMD make
