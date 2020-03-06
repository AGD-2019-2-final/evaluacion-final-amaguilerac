import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
contador = 0

for line in sys.stdin:
  contador=contador+1
  val,fecha,letra = line.split(",")
  val=int(val)
  letra=letra.strip()
  
  if contador <= 6:
    sys.stdout.write("{}   {}   {}\t\n".format(letra,fecha,val))
