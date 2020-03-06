import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#

if _name_ == '_main_':


    ##
    ## cada linea de texto recibida es una
    ## entrada clave \tabulador valor
    ##
    for line in sys.stdin:
      
      fecha, letra, val = line.split(",")
      val=val.strip()
      sys.stdout.write("{},{},{}\n".format(letra, fecha, val))
