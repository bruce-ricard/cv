#!/bin/sh

echo "downloading and installing latex..."
apt-get -y install texlive-latex-recommended texlive-pictures texlive-latex-extra
cd `mktemp -d`

echo "downloading curve package..."
wget -O- 'http://mirrors.ctan.org/macros/latex/contrib/curve.zip' > curve.zip
unzip curve.zip
cd curve
echo "compiling and installing curve..."
pdflatex curve.ins
pdflatex curve.dtx
pdflatex curve.dtx #needed twice, cf README
