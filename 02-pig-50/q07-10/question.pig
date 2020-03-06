-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` genere una tabla que contenga la primera columna,
-- la cantidad de elementos en la columna 2 y la cantidad de elementos en la 
-- columna 3 separados por coma. La tabla debe estar ordenada por las 
-- columnas 1, 2 y 3.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
BD = LOAD 'data.tsv'
    AS (letra:CHARARRAY, minusculas: BAG{t: TUPLE(p:CHARARRAY)},c3: MAP []);
BD = FOREACH BD GENERATE letra, SIZE(minusculas), SIZE(c3);

BD= ORDER BD BY $0,$1,$2;

--DUMP BD;

STORE BD INTO 'output' USING PigStorage (',');
fs -get output/ .

