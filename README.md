# [go back to list of bash scripts](https://github.com/c4arl0s#apps)

# ExtractImagesFromPdfFilesBatchScript

It extract Images From a bunch of Pdf Files in the current directory. It uses pdftocairo program.

# Dependencies for macOS

```bash
brew install poppler
```

# Code

```bash
#!/bin/bash
# extract images from a pdf file

find . -name "*.pdf" -type f | sort -n -r | while read pdfFileName    
do
    echo "Creating image directory for this pdf File"
    mkdir ${pdfFileName}.images
    pdftocairo -jpeg $pdfFileName ./${pdfFileName}.images
    mv *.jpg ${pdfFileName}.images
done
```
