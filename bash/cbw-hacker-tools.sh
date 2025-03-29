#!/usr/bin/env bash

# cbw-hacker-tools.sh - Bash installer for CBW tools

set -e

CATEGORIES=()
DRY_RUN=false
VERBOSE=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --core|--tui|--recon|--dev|--vm|--net|--extras)
      CATEGORIES+=("${1/--/}")
      shift ;;
    --dry-run) DRY_RUN=true; shift ;;
    --verbose) VERBOSE=true; shift ;;
    *) echo "Unknown option: $1"; exit 1 ;;
  esac
done

PACKAGES=()

for category in "${CATEGORIES[@]}"; do
  while IFS= read -r line; do
    [[ "$line" == "$category:"* ]] && PACKAGES+=("${line#"$category:"}")
  done < "$(dirname "$0")/../meta-packages.txt"
done

[[ ${#PACKAGES[@]} -eq 0 ]] && echo "No packages to install." && exit 0

echo "Installing: ${PACKAGES[*]}"
$DRY_RUN && exit 0

if command -v apt &>/dev/null; then
  sudo apt update
  sudo apt install -y "${PACKAGES[@]}"
elif command -v dnf &>/dev/null; then
  sudo dnf install -y "${PACKAGES[@]}"
elif command -v pacman &>/dev/null; then
  sudo pacman -Sy --noconfirm "${PACKAGES[@]}"
else
  echo "Unsupported package manager."
  exit 1
fi

