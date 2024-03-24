clear;
% Load mat file
load('HHT_data_L1R0.mat');
load('HHT_data_L1R1.mat');

% Merge both data L1R0 and L1R1 into one matrix
X = vertcat(HHT_data_L1R0, HHT_data_L1R1);

numberDimensions = 3;
% Use PCA function to reduce the dimension of The Raw Feature from 25 dimensions to 3 dimension
% get the score value
% The first column corresponds to PC1
% The second column corresponds to PC2
% and so on ...
[coff, score, latent] = pca(X)
pc1_L1R0 = score(1:250,1)
pc1_L1R1 = score(251:500,1)
pc2_L1R0 = score(1:250,2)
pc2_L1R1 = score(251:500,2)
pc3_L1R0 = score(1:250,3)
pc3_L1R1 = score(251:500,3)

% Visualize the result using the scatter function
% Divide the result of PCA into half
% The first half is L1R0
scatter3(pc3_L1R0,pc2_L1R0,pc3_L1R0,'Marker','^','MarkerFaceColor','blue')
hold on
% The second half is L1R1
scatter3(pc3_L1R1,pc2_L1R1,pc3_L1R1,'Marker','s','MarkerFaceColor','red')
hold off
grid on
