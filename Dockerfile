FROM ubuntu:18.04
MAINTAINER Julian Lobe <julian@lobe.me>

# update system
RUN apt-get update
RUN apt-get upgrade -y && apt-get dist-upgrade -y

# install LaTeX
RUN apt-get install -y --no-install-recommends --no-install-suggests texlive texlive-lang-german texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-fonts-extra texlive-xetex texlive-luatex

VOLUME /src
WORKDIR /src
CMD pdflatex /src/document.tex
