% Wilcoxon signed rank test
 
clc;
clear all;
close all;

% see Wilcoxon Test Lab Session PPT page 4 to complete the code
% and adjust to which samples that will be used
% load csv file
group1 = load ('groupSample1.mat');
group2 = load ('groupSample2.mat');
group3 = load ('groupSample3.mat'); %small size sample
group4 = load ('groupSample4.mat'); %small size sample
group5 = load ('groupSample5.mat'); %large size sample
group6 = load ('groupSample6.mat'); %large size sample

% change struct into array
group1 = cell2mat(struct2cell(group1));
group2 = cell2mat(struct2cell(group2));
group3 = cell2mat(struct2cell(group3));
group4 = cell2mat(struct2cell(group4));
group5 = cell2mat(struct2cell(group5));
group6 = cell2mat(struct2cell(group6));

% see Wilcoxon Test Lab Session PPT page 5 to complete the code
[p_exa,h_exa,stats_exa] = signrank(group1,group2,'tail','both','alpha',0.05,'method','exact');
[p_appr,h_appr,stats_appr] = signrank(group1,group2,'tail','both','alpha',0.05,'method','approximate');
% performing wilcoxon signed rank test based (small sample size)
% method : exact
%[p,h,stats] = signrank(group1,group2,'method','%methodExact')
[p_small_exa,h_small_exa,stats_small_exa] = signrank(group3,group4,'tail','both','alpha',0.05,'method','exact');
% method : approximate
%[p2,h2,stats2]= signrank(group1,group2,'method','%methodApproximate')
[p_small_appr,h_small_appr,stats_small_appr] = signrank(group3,group4,'tail','both','alpha',0.05,'method','approximate');

% performing wilcoxon signed rank test based (large sample size)
% method : exact
%[p3,h3,stats3] = signrank(group1,group2,'method','%methodExact')
[p_large_exa,h_large_exa,stats_large_exa] = signrank(group5,group6,'tail','both','alpha',0.05,'method','exact');
% method : approximate
%[p4,h4,stats4]= signrank(group1,group2,'method','%methodApproximate')
[p_large_appr,h_large_appr,stats4_large_appr] = signrank(group5,group6,'tail','both','alpha',0.05,'method','approximate');
