% feature importance based Feature Weight of SVM
% Tested feature: feature weight
 
clc;
clear all;
 
% Load workspace of MATLAB to get the file containing positive and 
% negative class, and the classification result of SVM model
% See page 4 of PPT Lab
load ('LabFW.mat')

% Performing feature weight (FW); See page 5 of PPT Lab 
FW = abs(modelSVM.sv_coef'*modelSVM.SVs)

% Sort feature weight in descending order; See page 5 of PPT Lab
Features = ["Feature A", "Feature B"]
FW = [Features FW]
sortedFW = sortrows(FW',1,'descend')
