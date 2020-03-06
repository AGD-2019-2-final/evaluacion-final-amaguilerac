-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
BD = LOAD 'data.tsv'
    AS (letra:CHARARRAY, minusculas: BAG{t: TUPLE(p:CHARARRAY)},MAP []);
BD = FOREACH BD GENERATE $2;
BD = FOREACH BD GENERATE FLATTEN ($0)  as letra;
grouped = group BD by letra;

wordcount = FOREACH grouped GENERATE group , COUNT(BD);

--wordcount = FOREACH grouped GENERATE $0 , COUNT($1);
--DUMP wordcount;

STORE wordcount INTO 'output' USING PigStorage (',');
fs -get output/ .


