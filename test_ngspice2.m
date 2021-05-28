% ngspice() grabs the netlist file (probably generated with XSCHEM) and runs the
% simulation using ngspice.
% Note that for ngspice to generate a binary .raw file is better that the
% netlist does not include .control structures when run in batch mode
%
% If the .raw file does not contain 'Binary:' it will hang looking for that 
% string on the .raw file...

clc

netlistfilename = './test_sch2.spice' % nested DC sweep

data = ngspice(netlistfilename);

v_sweep = reshape(data(:,1),11,[]);
IN1 = reshape(data(:,2),11,[]);
IN2 = reshape(data(:,3),11,[]);
OUT = reshape(data(:,3),11,[]);

figure
surf(IN1, IN2, OUT)