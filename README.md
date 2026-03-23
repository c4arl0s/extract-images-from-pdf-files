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

If your user cannot write to `/usr/local/bin`, run:

```bash
sudo ./install.sh
```

After installation, the command is available as:

```bash
extract-images-from-pdf-files
```

## What `install.sh` does

`install.sh`:

1. Finds `extract-images-from-pdf-files.sh` in this repository.
2. Ensures the script is executable.
3. Creates or updates a symbolic link at:
   `/usr/local/bin/extract-images-from-pdf-files`

That symlink lets you run the script from any directory in your terminal.

## Usage

Move to a directory that contains PDF files, then run:

```bash
extract-images-from-pdf-files
```
