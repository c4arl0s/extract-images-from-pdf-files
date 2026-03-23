#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_SCRIPT="${SCRIPT_DIR}/extract-images-from-pdf-files.sh"
TARGET_LINK="/usr/local/bin/extract-images-from-pdf-files"

if [[ ! -f "${SOURCE_SCRIPT}" ]]; then
  echo "Source script not found: ${SOURCE_SCRIPT}" >&2
  exit 1
fi

chmod +x "${SOURCE_SCRIPT}"

if [[ ! -d "/usr/local/bin" ]]; then
  echo "Directory /usr/local/bin does not exist." >&2
  exit 1
fi

if ln -sfn "${SOURCE_SCRIPT}" "${TARGET_LINK}" 2>/dev/null; then
  echo "Installed command: ${TARGET_LINK}"
else
  echo "Permission denied while creating ${TARGET_LINK}."
  echo "Run with sudo:"
  echo "  sudo ./install.sh"
  exit 1
fi

echo "You can now run:"
echo "  extract-images-from-pdf-files"
