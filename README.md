LaTeX del TFG, local — no hay remoto de Overleaf (requiere cuenta premium que no tenemos). Se versiona como parte de este mismo repo.

## Dependencias en Ubuntu

Instala una distribución LaTeX y el automatizador de compilación:

```sh
sudo apt update
sudo apt install latexmk texlive-latex-extra texlive-lang-spanish texlive-fonts-recommended
```

No es necesario instalar `texlive-full`; ocupa mucho más espacio e incluye
paquetes que esta memoria no utiliza.

## Compilación

El documento principal es `latex/main.tex`. Desde la raíz de `paper/`, ejecuta:

```sh
./scripts/build-pdf.sh
```

Los archivos auxiliares se guardan en `latex/build/` y el resultado final en
`pdf/memoria-tfg.pdf`.

Consulta `latex/README.md` para conocer la estructura. Si en algún momento se
quiere usar el editor de Overleaf puntualmente, se sube un zip manualmente
(New Project → Upload Project, gratis) y luego se vuelve a bajar el zip para
reincorporar cambios; no hay sincronización automática.
