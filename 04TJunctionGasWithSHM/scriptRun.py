# Imports the 'os' module to interact with the operating system.
import os  

from scriptRunFunctions import *

# This line would clean the case directory by removing generated files from a previous simulation.
os.system('foamCleanCase')  

# Generates the background mesh.
os.system('blockMesh')

# Generates the mesh with the utility snappyHexMesh.
os.system('snappyHexMesh')

# The command snappyHexMesh create a new mesh and writes it in 
# a new time folder. We need to copy the initial condition files
# from folder 0 to this new folder.
# This function copies the files from folder 0 to the last
# folder.
copy_field_files(
    '0',
    max((f for f in os.listdir('.') if os.path.isdir(f) and is_time_folder(f)), key=lambda x: float(x)),
    ['U', 'p', 'T', 'CH4', 'CO2', 'N2']
)

# Runs the OpenFOAM solver 'foamRun'.
os.system('foamRun')  

# Opens the case in ParaView using 'paraview' for visualization.
#os.system('touch foam.foam')
#os.system('paraview foam.foam')
