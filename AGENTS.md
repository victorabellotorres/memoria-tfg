# Instrucciones para la memoria del TFG

Aplicables a `paper/`: memoria del TFG de GEI (Computació), FIB/UPC.

## Antes de trabajar

Lee `../context/thesis-brief.md`, `../context/status.md`,
`../context/university-guidelines.md`, las notas pertinentes de
`../notes/decisions_and_concepts/` y la estructura LaTeX existente. Usa
`references/Tesis.bib`. Si falta información, indícalo como `TBD`; no la
supongas ni la reconstruyas.

## Escritura y rigor

- Escribe en castellano; `Resum` en catalán y `Abstract` en inglés. Mantén un
  estilo académico claro, formal, preciso y terminología consistente; define
  siglas al primer uso. No fijes extensión, plantilla o estilo sin confirmación.
- No inventes citas, datos, resultados, configuraciones, propiedades de
  datasets ni requisitos. Verifica cada afirmación externa contra la fuente
  primaria accesible y registra página/sección/tabla/figura en las notas.
- Usa solo claves de `references/Tesis.bib`; añade referencias desde Zotero o
  marca `TBD`. Parafrasea fielmente; las citas textuales deben ser breves y con
  localizador.
- Distingue hallazgos publicados, resultados propios, interpretación e hipótesis
  o trabajo previsto. Los resultados propios deben documentar datos, partición,
  protocolo, métricas, condiciones y limitaciones cuando corresponda.
- No presentes experimentos previstos como realizados ni conviertas la salida
  del sistema en consejo médico/nutricional validado sin evidencia.

## Requisitos FIB y estructura

- Incluye portada FIB, `Resumen`, `Resum`, `Abstract`, índice, contenido
  principal, referencias y anexos; son obligatorios los resúmenes y el análisis
  de sostenibilidad/ética. La estructura recomendada figura en
  `../context/university-guidelines.md`.
- La portada debe usar el mecanismo oficial disponible e incluir título, autor,
  defensa, dirección y afiliación, titulación, FIB y UPC–BarcelonaTech; añade
  ponente/organización cuando aplique. Los campos no confirmados son `TBD`.
- Mantén los tres resúmenes coherentes y no traduzcas resultados inexistentes.
- Delimita alcance, objetivos y contribución; relaciónalos con las competencias
  aprobadas. Organiza el estado del arte por problemas/enfoques y compara
  supuestos, datos, métodos, métricas, resultados y límites.
- Separa diseño de implementación, define el protocolo antes de interpretar
  resultados y documenta prevención de fugas. Menciona e interpreta cada figura
  o tabla. Analiza privacidad, sesgos, seguridad, explicabilidad, recursos y
  uso indebido cuando sean relevantes.
- Las conclusiones responden a objetivos únicamente con resultados obtenidos y
  exponen límites y trabajo futuro.

## LaTeX y flujo

- Conserva la organización LaTeX; usa referencias cruzadas y no números
  escritos a mano. Cada figura/tabla necesita leyenda, etiqueta, fuente o
  elaboración propia y explicación en el texto.
- No añadas PDFs licenciados, datos crudos, pesos, binarios ni compilados al
  repositorio. Prioriza código fuente.
- Antes de cerrar cambios: revisa coherencia y citas, compila con
  `scripts/build-pdf.sh`, corrige errores/advertencias relevantes y resume los
  cambios y los `TBD`.

## Fuentes normativas

- [Normativa TFE FIB](https://www.fib.upc.edu/sites/fib/files/documents/estudis/normativa-tfe-fib-ca.pdf)
- [Página TFG GEI](https://www.fib.upc.edu/es/grados/grado-en-ingenieria-informatica/trabajo-de-fin-de-grado)

Si cambian, actualiza primero `../context/university-guidelines.md`.
