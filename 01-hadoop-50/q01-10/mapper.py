import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:

        ##
        ## genera las tuplas palabra \tabulador 1
        ## ya que es un conteo de palabras
        ##
        i=0
        for word in line.split(','):
            i=i+1
            if i==3:
            ##
            ## escribe al flujo estandar de salida
            ##
                sys.stdout.write("{}\t1\n".format(word))
