from network import *
import time

startTime = time.time()

'''
###### RUN BASIC STA AND GET DEMAND FUNCTIONS ##########################
net = Network("Austin_sdb\Austin_sdb_net.txt", "Austin_sdb\Austin_sdb_trips.txt")
net.readNodeFile("Austin_sdb\Austin_sdb_node.txt")
net.userEquilibrium("MSA", 1000, 1e-6, net.averageExcessCost)
net.calcAttractiveness()
net.printODFile("Austin_sdb\Austin_sdb_attr.txt")
net.printResults("Austin_sdb\Output\ODResults_initial.txt", "Austin_sdb\Output\LinkResults_initial.txt", "Austin_sdb\Output\OriginResults_initial.txt", "Austin_sdb\Output\Austin_sdb_DemandResults.txt", "Austin_sdb\Output\AggregateResults_initial.txt")
'''
##### RUN SIMULATIONS AND OUTPUT RESULTS ########################
net = Network("Austin_sdb\Austin_sdb_net.txt", "Austin_sdb\Austin_sdb_trips.txt")
net.readNodeFile("Austin_sdb\Austin_sdb_node.txt")
net.readODFile("Austin_sdb\Austin_sdb_attr.txt")
net.RELAXEDuserEquilibrium("MSA", 1000, 1e-6, 1e-2, net.averageExcessCost, net.TMFGap, net.targetDemandsElastic, 1.0)
net.printResults("Austin_sdb\Output\Austin_sdb_ODResults.txt", "Austin_sdb\Output\Austin_sdb_LinkResults.txt", "Austin_sdb\Output\Austin_sdb_OriginResults.txt", "Austin_sdb\Output\Austin_sdb_DemandResults.txt", "Austin_sdb\Output\Austin_sdb_AggregateResults.txt")



endTime = time.time()

print(endTime-startTime)