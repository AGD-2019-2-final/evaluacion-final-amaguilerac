import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if _name_ == '_main_':


    ##
    ## cada linea de texto recibida es una
    ## entrada clave \tabulador valor
    ##
    for line in sys.stdin:
      
      letra, val, fecha = line.split(",")
      fecha=fecha.strip()
      sys.stdout.write("{},{},{}\t\n".format(letra, fecha, val))
