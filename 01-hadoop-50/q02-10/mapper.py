import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
next(sys.stdin)
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
            if i==4:
               sys.stdout.write("{}\t".format(word))
            if i==5:
               sys.stdout.write("{}\n".format(word))
