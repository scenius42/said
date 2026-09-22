#!/bin/bash

# Exit on any error
set -e

INPUT="said.md"
OUTPUT_DIR="docs"

echo "Creating documents folder..."
mkdir -p "$OUTPUT_DIR"

echo "Compiling HTML..."
pandoc "$INPUT" -s -o "$OUTPUT_DIR/said.html"

echo "Compiling EPUB..."
pandoc "$INPUT" -s -o "$OUTPUT_DIR/said.epub"

echo "Compiling PDF..."
# Note: Requires local pdf engine like pdflatex or xelatex installed
pandoc "$INPUT" -s --pdf-engine=xelatex --variable colorlinks=true -o "$OUTPUT_DIR/said.pdf"

echo "Done! Check the /$OUTPUT_DIR folder."

