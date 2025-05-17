# Imports the 'os' module to interact with the operating system.
import os  

# This line would clean the case directory by removing generated files from a previous simulation.
# os.system('foamCleanCase')  

# Runs the OpenFOAM utility 'blockMesh' to generate the mesh based on the blockMeshDict file.
os.system('blockMesh')  

# Runs the OpenFOAM utilityy 'setFields' to generate the initial condition.
os.system('setFields')

# Runs the OpenFOAM solver 'laplacianFoam', typically used for solving the Laplace equation (e.g., temperature or pressure diffusion).
os.system('laplacianFoam')  

# Opens the case in ParaView using 'paraFoam' for visualization.
os.system('paraFoam')  

# This line plots the residuals from the simulation.
# os.system('foamMonitor -l postProcessing/residuals/0/residuals.dat')  


