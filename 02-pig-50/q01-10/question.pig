-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

lines = LOAD 'data.tsv' USING PigStorage ('\t') AS (letra:CHARARRAY,fecha:CHARARRAY,numero:INT); --Cada se ingresa como un vector

words = FOREACH lines GENERATE letra AS letra, fecha AS fecha;

grouped = GROUP words BY letra; 

--DUMP grouped

wordcount = FOREACH grouped GENERATE group, COUNT(words);

--DUMP wordcount

STORE wordcount INTO 'output';
fs -get output/ .
