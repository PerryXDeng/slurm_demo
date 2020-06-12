from numpy.random import normal

scalar = normal() # mean 0 variance 1 by default
with open(str(scalar), "w+"):
  pass

