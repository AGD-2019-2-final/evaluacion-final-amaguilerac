-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

lines = LOAD 'data.tsv' USING PigStorage ('\t') AS (letra:CHARARRAY,fecha:CHARARRAY,numero:INT);

lines = foreach lines generate numero as numero;

lines= order lines by numero;

--dump lines;

lines= limit lines 5;

STORE lines INTO 'output';
fs -get output/ .
