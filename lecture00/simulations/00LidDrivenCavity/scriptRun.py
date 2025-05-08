import os

#os.system('foamCleanCase')

os.system('blockMesh')

os.system('foamRun')

os.system('paraFoam')

#os.system('foamMonitor -l postProcessing/residuals/0/residuals.dat')
