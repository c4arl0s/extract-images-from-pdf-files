# [go back to list of bash scripts](https://github.com/c4arl0s#apps)

# Extract Images From PDF Files

This project provides a bash script that scans the current directory for `.pdf` files and extracts their images using `pdftocairo`.

For each PDF file, it creates a sibling folder named:

`<pdf-file-name>.images`

and places generated `.jpg` images there.

## Dependency (macOS)

```bash
brew install poppler
```

## Install command globally

From the project root, run:

```bash
chmod +x install.sh
./install.sh
```

After installation, the command is available as:

```bash
pdf2imgx
```

## install

## Usage

Move to a directory that contains PDF files, then run:

```bash
pdf2imgx
```
