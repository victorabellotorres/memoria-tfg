#!/usr/bin/env sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
paper_dir=$(CDPATH= cd -- "$script_dir/.." && pwd)
latex_dir="$paper_dir/latex"
build_dir="$latex_dir/build"
pdf_dir="$paper_dir/pdf"

if ! command -v latexmk >/dev/null 2>&1; then
  echo "Error: latexmk no está instalado." >&2
  echo "Instala las dependencias indicadas en paper/README.md." >&2
  exit 1
fi

mkdir -p "$build_dir" "$pdf_dir"

cd "$latex_dir"
export BIBINPUTS="$paper_dir/references:"

# Limpia el estado de compilaciones anteriores. Latexmk conserva los .bbl porque
# pueden ser fuentes versionadas, así que eliminamos únicamente el generado aquí.
latexmk -C -outdir="$build_dir" main.tex
rm -f "$build_dir/main.bbl"

latexmk -pdf -interaction=nonstopmode -halt-on-error \
  -outdir="$build_dir" main.tex

if grep -Fq 'There were undefined citations' "$build_dir/main.log"; then
  echo "Error: hay citas sin resolver; revisa Tesis.bib y el registro de BibTeX." >&2
  exit 1
fi

cp "$build_dir/main.pdf" "$pdf_dir/memoria-tfg.pdf"

echo "PDF generado en: $pdf_dir/memoria-tfg.pdf"
