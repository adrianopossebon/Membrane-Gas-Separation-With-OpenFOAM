import os 
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import AutoMinorLocator


# File name where the profiles can be found.
file_name = "postProcessing/patchFlowRateOutlet1/0/surfaceFieldValue.dat"

# Reading with pandas.
df = pd.read_csv(file_name, sep = "\t", skiprows = 5)

# Changing the file from pandas to numpy.
data = df.to_numpy()

# The values of the y axis.
time = data[:, 0]

# The values of the velocity.
Q_1 = data[:, 1]

# File name where the profiles can be found.
file_name = "postProcessing/patchFlowRateOutlet2/0/surfaceFieldValue.dat"

# Reading with pandas.
df = pd.read_csv(file_name, sep = "\t", skiprows = 5)

# Changing the file from pandas to numpy.
data = df.to_numpy()

# The values of the y axis.
time = data[:, 0]

# The values of the velocity.
Q_2 = data[:, 1]

# Ploting.

fig = plt.figure()
ax = fig.add_subplot(111)

plt.rcParams["text.usetex"] = True

ax.set_xlabel(r"$t (s)$", fontsize = 24)
ax.set_ylabel(r"$Q (m3/s)$", fontsize = 24)

plt.plot(time, Q_1, 'b-', lw = 2, label = 'Outlet1')
plt.plot(time, Q_2, 'r-', lw = 2, label = 'Outlet2')
plt.plot(time, Q_1+Q_2, 'k-', lw = 2, label = 'Sum')

ax.legend()
legend = ax.legend(loc=1, fontsize='large')

minor_locator = AutoMinorLocator(5)
ax.xaxis.set_minor_locator(minor_locator)
minor_locator = AutoMinorLocator(5)
ax.yaxis.set_minor_locator(minor_locator)

plt.savefig('figurePatchFlowRateOutlet1Outlet2.pdf', format='pdf', dpi=1200, bbox_inches = 'tight')
