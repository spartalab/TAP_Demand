class OD:

   def __init__(self, origin, destination, demand = 0):
      self.origin = origin
      self.destination = destination
      self.demand = demand
      self.FIXEDdemand = demand
      
      self.a_rs = 0.0
      self.a_rn = 0.0
      self.a_rsE = 0.0
      self.a_rnE = 0.0
      self.a_rsSC = 0.0
      self.P_r = 0.0
      self.P_r_aug = 0.0
      self.k_rs = 0.0
      self.tel = 0.0