# Memoria del TFG en LaTeX

Plantilla mínima para la memoria del TFG del GEI (FIB–UPC), especialidad de
Computació. El documento se escribe en castellano e incluye los resúmenes en
castellano, catalán e inglés requeridos por la FIB.

La plantilla original de esta carpeta no era oficial de la UPC. La portada de
`main.tex` es provisional: antes de entregar la memoria se debe sustituir o
validar mediante el mecanismo oficial de generación de portadas de la FIB.

## Estructura

- `main.tex`: configuración y orden del documento.
- `frontmatter/`: resumen, resum y abstract.
- `chapters/`: capítulos principales y anexo.
- `assets/`: logotipo y otros recursos institucionales.
- `figures/`: figuras propias de la memoria.
- `../references/Tesis.bib`: bibliografía exportada desde Zotero.

## Compilación

Desde la raíz del repositorio `paper/`:

```sh
./scripts/build-pdf.sh
```

El script guarda los archivos auxiliares en `latex/build/` y copia el documento
final a `pdf/memoria-tfg.pdf`.

Alternativamente, desde esta carpeta se puede ejecutar directamente:

```sh
latexmk -pdf -outdir=build main.tex
```

Los ejecutables LaTeX aún no están instalados en este entorno. Las dependencias
y el comando de instalación están documentados en `../README.md`.
