class Node:

   def __init__(self, isZone = False):
      self.forwardStar = list()
      self.reverseStar = list()
      self.isZone = isZone
      
      self.x = 0.0
      self.y = 0.0
      self.geoid = 0