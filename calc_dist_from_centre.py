import math
import sys
import re

def calc_dist_from_centre(x,y,z):
  return math.sqrt(x**2+y**2+z**2)

with open(sys.argv[1]) as cmm:
  for line in cmm:
    if line.startswith("<marker id="):
      line = line.split()
      id=line[10].rstrip()
      id=re.sub('[beadID=""\/>]',"",id)
      
      x=float(re.sub('[x="]',"",line[2]))
      y=float(re.sub('[y="]',"",line[3]))
      z=float(re.sub('[z="]',"",line[4]))
      print id + "\t" + str(calc_dist_from_centre(x,y,z))
