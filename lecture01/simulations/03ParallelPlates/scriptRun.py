# Imports the 'os' module to interact with the operating system.
import os  

# This line would clean the case directory by removing generated files from a previous simulation.
# os.system('foamCleanCase')  

# Runs the OpenFOAM utility 'blockMesh' to generate the mesh based on the blockMeshDict file.
os.system('blockMesh')  

# Runs the OpenFOAM solver 'foamRun'.
os.system('foamRun')  

# Opens the case in ParaView using 'paraFoam' for visualization.
os.system('paraFoam')  

