clear all; clc;

formatSpec = '%d.csv';
for k = 0:136
    A1 = k;
    str = sprintf(formatSpec,A1);
    E(k+1) = csvread(str,1,1);
end

