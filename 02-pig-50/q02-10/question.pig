-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
-- 


y = LOAD 'data.tsv' USING PigStorage ('\t') AS (letra:CHARARRAY,fecha:CHARARRAY,valor:INT);

y = ORDER y BY letra, valor;

STORE y INTO 'output';
fs -get output/ .
