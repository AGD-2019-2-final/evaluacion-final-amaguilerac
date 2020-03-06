import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
curkey = None
total = 0
curmax=0
curmin=100000000


for line in sys.stdin:

    key, val = line.split(",")
    val=float(val)

    if key == curkey:
        if val > curmax:
          curmax=val
        if val<curmin:
          curmin=val
        total += val
    else:
        
        if curkey is not None:
            
            sys.stdout.write("{}\t{}\t{}\n".format(curkey, curmax,curmin))

        curkey = key
        curmin=val
        curmax= val

sys.stdout.write("{}\t{}\t{}\n".format(curkey, curmax,curmin))
