import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":

       for line in sys.stdin:
         c1,c2,c3 = line.split("   ")
         c3=c3.strip() ##Me quita los caracteres adiconales
         if len(c3)<3:
           if len(c3) == 2:
            c3="0"+c3
           else:
            c3="00"+c3
                   
         sys.stdout.write("{},{},{}\n".format(c3,c2,c1))        
