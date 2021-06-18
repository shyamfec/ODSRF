clc;
close all;
clear;
%%
path='C:\Users\Admin\Documents\MATLAB\Fusion Toolkit\SheetsFinal\';
avgA=zeros(10,7);
for SheetNo=1:7
A = xlsread([path 'Dataset8.xls'], SheetNo, 'B2:H11');
avgA=avgA+A;
end
avgA=avgA./7;

Sheet=8;
xlswrite([path 'Final.xls'],avgA,Sheet,'B2:H11');


