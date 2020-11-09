clc
clear
close all
%%
% C:\Users\admin\Downloads\ncc test file\33404136-test
% RT Dose
[fileNameRD, pathNameRD] = uigetfile('*.dcm')
fileNameRD_new = [fileNameRD(1:end-4), '_anon.dcm']
value.ReviewerName = ''; % Remove value in the fieldname of ReviewName
dicomanon(fullfile(pathNameRD, fileNameRD), fullfile(pathNameRD, fileNameRD_new), 'update', value)
anonRD = dicominfo(fullfile(pathNameRD, fileNameRD_new))

% RT plan
[fileNameRP, pathNameRP] = uigetfile('*.dcm')
fileNameRP_new = [fileNameRP(1:end-4), '_anon.dcm']
value.ReviewerName = '';
dicomanon(fullfile(pathNameRP, fileNameRP), fullfile(pathNameRP, fileNameRP_new), 'update', value)

anonRP = dicominfo(fullfile(pathNameRP, fileNameRP_new))
RP = dicominfo(fullfile(pathNameRP, fileNameRP))

% RS plan
[fileNameRS, pathNameRS] = uigetfile('*.dcm')
fileNameRS_new = [fileNameRS(1:end-4), '_anon.dcm']

value.ReviewerName = '';
dicomanon(fullfile(pathNameRS, fileNameRS), fullfile(pathNameRS, fileNameRS_new), 'update', value)
anonRS = dicominfo(fullfile(pathNameRS, fileNameRS_new))
RS = dicominfo(fullfile(pathNameRS, fileNameRS))