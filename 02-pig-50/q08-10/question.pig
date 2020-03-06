-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
BD = LOAD 'data.tsv'
    AS (letra:CHARARRAY, minusculas: BAG{t: TUPLE(p:CHARARRAY)},c3: MAP []);
BD = FOREACH BD GENERATE FLATTEN (minusculas), FLATTEN (c3);

grouped = GROUP BD BY ($0,$1);
conteo = FOREACH grouped GENERATE group, COUNT(BD);

--DUMP conteo;
--DESCRIBE grouped;

STORE conteo INTO 'output';
fs -get output/ .
