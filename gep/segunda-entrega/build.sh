#!/usr/bin/env sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
paper_dir=$(CDPATH= cd -- "$script_dir/../.." && pwd)
build_dir="$script_dir/build"
output_dir="$paper_dir/pdf/GEP/segunda-entrega"

mkdir -p "$build_dir" "$output_dir"

cd "$script_dir"
latexmk -C -outdir="$build_dir" main.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$build_dir" main.tex
cp "$build_dir/main.pdf" "$output_dir/segunda-entrega-GEP-VictorAbello.pdf"

latexmk -C -outdir="$build_dir" autoevaluacion.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$build_dir" autoevaluacion.tex
cp "$build_dir/autoevaluacion.pdf" "$output_dir/Rubrica2-Autoavaluacio-VictorAbello.pdf"

echo "PDFs generados en: $output_dir"
