# sim_scripts

Octave/Matlab scripts to simulate with ngspice and read .raw file.

Starting from:

 Iain Robinson (2021). Run ngspice simulation and import rawfile (https://www.mathworks.com/matlabcentral/fileexchange/37457-run-ngspice-simulation-and-import-rawfile), MATLAB Central File Exchange. Retrieved May 30, 2021. 

# Getting Ngspice raw file
The script will call ngspice in batch mode. Apparently, you don't want to have any .control structure on the netlist for it to work well and return a .raw in binary format.

The original Octave/Matlab script will hang if the .raw file does not include "Binary:" somewhere (i.e. it will hang if the file uses ascii output instead of binary output)
