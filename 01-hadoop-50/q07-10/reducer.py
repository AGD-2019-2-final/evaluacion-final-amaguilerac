import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
for line in sys.stdin:

    c1,c2,c3 = line.split(",")
    c3 = c3.strip()
    sys.stdout.write("{}   {}   {}\t\n".format(c1,c3,c2))
