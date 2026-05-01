#!/bin/bash
# extract images from a pdf file

find . -name "*.pdf" -type f | sort -n -r | while read pdfFileName    
do
    echo "Creating image directory for this pdf File"
    mkdir ${pdfFileName}.images
    pdftocairo -jpeg $pdfFileName ./${pdfFileName}.images
    mv *.jpg ${pdfFileName}.images
done
