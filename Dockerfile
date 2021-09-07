FROM rocker/verse

# update packages for Ubuntu, Install entr to watch for changes to code files,
# and texlive-latexextra to render the documents needed
RUN apt-get update \
    && apt-get upgrade && \
    apt-get install -y --no-install-recommends \
    apt-utils

RUN apt-get install -y --no-install-recommends \
    entr texlive-base texlive-latex-base texlive-binaries \
    texlive-pictures texlive-latex-recommended texlive lmodern texlive-latex-extra

WORKDIR /opt/reproduce

# Watch code for changes, re-render document whenever things change
CMD find . | entr make
