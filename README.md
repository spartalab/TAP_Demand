# TAP-Demand Project

## Overview

Code for: A Relaxed Singly Constrained Static Traffic Assignment Model with Elastic Demand: Application to Telework and Urban Development Scenarios in Austin, Texas 
By: Jake Robbennolt, Dale Robbennolt, and Stephen D. Boyles
Department of Civil, Architectural and Environmental Engineering 
The University of Texas at Austin, Austin, Texas 78712-1700
Email: jr73453@utexas.edu
Submitted to: The Annual Meeting of the Transportation Research Board 2025, and the Transportation Research Record.
**Please cite the above paper if you use this code or data in any way. 
 
The TAP-Demand Project is a Python-based tool for running various static traffic assignment models, including relaxed singly constrained, singly constrained, elastic, and fixed demand models. It uses telework data to create attractiveness values for each model.

## Key Features

- Multiple traffic assignment models:
  - Relaxed singly constrained
  - Singly constrained
  - Elastic demand
  - Fixed demand
- Incorporation of telework data
- Calculation of network-wide metrics
- Output of detailed results for OD pairs, links, origins, and destinations

## File Structure

- `network.py`: Contains the `Network` class, which is the core of the project. It includes methods for reading network data, performing traffic assignment, and outputting results.
- `driver.py`: The main script to run the project. It sets up the network and executes the chosen model.
- `link.py`, `node.py`, `od.py`, `path.py`, and `utils.py`: Contain the necessary classes and helper functions to support the processes in `network.py`.

## Usage

1. Prepare input files:
   - Network file (e.g., `Austin_sdb_net.txt`)
   - Demand file (e.g., `Austin_sdb_trips.txt`)
   - Node file with telework data (e.g., `Austin_sdb_node.txt`)

2. Run the initial static traffic assignment to generate attractiveness values:
   - Uncomment the section "RUN BASIC STA AND GET DEMAND FUNCTIONS" in `driver.py`
   - This will create an attractiveness file (e.g., `Austin_sdb_attr.txt`)

3. Calibrate the attractiveness file as needed.
   - `Scenarios.R` can be used to modify these files

4. Run the desired model:
   - Modify the "RUN SIMULATIONS AND OUTPUT RESULTS" section in `driver.py`
   - Choose the appropriate model by calling the corresponding method (e.g., `net.targetDemandsRelaxed`, `net.targetDemandsElastic`, `net.targetDemandsSinglyConstrained`, or `net.targetDemandsStatic`)
   - Adjust parameters as needed (e.g., maximum iterations, convergence criteria)

5. Check the output files in the specified directory for results.

## Output Files

- OD Results: Demand and travel time for each Origin-Destination pair
- Link Results: Flow and cost for each network link
- Origin Results: Aggregated metrics for each origin
- Destination Results: Aggregated metrics for each destination
- Aggregate Results: Network-wide metrics (e.g., TSTT, average travel time, relative gap)

## Dependencies

- Python 3.x
- Standard Python libraries (e.g., `math`, `time`, `heapq`)

## Note

Ensure all input files are in the correct format and located in the specified directories before running the project. 
See the Austin_sdb folder for example input and output files. 