import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':

    curkey = None
    total = 0
   

    for line in sys.stdin:

        val, key = line.split(",")
        key = key.strip()
        sys.stdout.write("{},{}\n".format(key,val))
