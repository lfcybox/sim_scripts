% ngspice() grabs the netlist file (probably generated with XSCHEM) and runs the
% simulation using ngspice.
% Note that for ngspice to generate a binary .raw file is better that the
% netlist does not include .control structures when run in batch mode
%
% If the .raw file does not contain 'Binary:' it will hang looking for that 
% string on the .raw file...

clc

netlistfilename = './test_sch.spice' % Transient

data = ngspice(netlistfilename);

figure
plot(data(:,1), data(:,2:3))