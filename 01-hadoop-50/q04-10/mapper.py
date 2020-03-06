import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":

       for line in sys.stdin:
         letra,fecha,valor = line.split("   ")
         valor=valor.strip()
         sys.stdout.write("{},{},{}\n".format(fecha,letra,valor)) 
