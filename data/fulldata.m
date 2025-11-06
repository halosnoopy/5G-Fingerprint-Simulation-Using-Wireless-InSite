clear
clc

addpath .\AoD\
addpath .\Features\

nos = 10;

for i=1:nos
    load(['AoD_',num2str(i),'.mat'])
    load(['Features_',num2str(i),'.mat'])
end

data = [];
for i=1:size(AoD_1,1)
    for j = 1:nos
        eval(['a=features_',num2str(j),'(',num2str(i),',:);'])
        eval(['b=AoD_',num2str(j),'(',num2str(i),',:);'])
        tem = [a,b];
        data = [data;tem];
    end
end

T = {'flr_no','no_in_flr','no_in_bld','X','Y','Z','SINR1','RSSI1','RSRP1','RSRQ1','SINR2','RSSI2','RSRP2','RSRQ2','SINR3','RSSI3','RSRP3','RSRQ3','AoD1','AoD2','AoD3'};
A = [T; num2cell(data)];
xlswrite('test', A);

clearvars -except data
save data2m10.mat
