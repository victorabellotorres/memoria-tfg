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

# Limpia el estado de compilaciones fallidas. Latexmk conserva los .bbl porque
# pueden ser fuentes versionadas, así que eliminamos únicamente el generado aquí.
latexmk -C -outdir="$build_dir" main.tex
rm -f "$build_dir/main.bbl" "$build_dir/enable-bibliography.tex"

# La plantilla debe compilar incluso antes de que exista la primera cita.
# La primera pasada genera el .aux sin invocar BibTeX; si contiene citas, una
# segunda llamada activa BibTeX y completa las referencias automáticamente.
latexmk -pdf -bibtex- -interaction=nonstopmode -halt-on-error \
  -outdir="$build_dir" main.tex

if grep -Fq '\citation{' "$build_dir/main.aux"; then
  touch "$build_dir/enable-bibliography.tex"
  latexmk -g -pdf -interaction=nonstopmode -halt-on-error \
    -outdir="$build_dir" main.tex
fi

cp "$build_dir/main.pdf" "$pdf_dir/memoria-tfg.pdf"

echo "PDF generado en: $pdf_dir/memoria-tfg.pdf"
