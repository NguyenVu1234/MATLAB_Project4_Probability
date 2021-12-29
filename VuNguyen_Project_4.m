% Author NguyenVu
% Date 10/09/2021
clc
clear
close all
%Load data from the source
load ECE2523_Project4_Data

% Call the function to calculate  the joint probabilities 
% of the dataset “ouData” 
resultOU = CalcMKJointProb(ouData)

% Call the function to calculate  the joint probabilities 
% of the dataset “txData” 
resultTX = CalcMKJointProb(txData)