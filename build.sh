#!/bin/sh
src="src"
filename="the-lindberg-case"
cd ${src}
makeindex ${filename}.glo -s ${filename}.ist -t ${filename}.glg -o ${filename}.gls
pdflatex ${filename}
pdflatex ${filename}

#for filetype in $(ls *.* | cut -f2 -d. | sort -u | sed -e /tex$/d -e /sh/d -e /pdf/d ) ; do rm  *.${filetype}; done 
