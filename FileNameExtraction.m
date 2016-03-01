clear all;
close all;
clc;

path_one = 'D:\Landmark Detection\Database\data analyse\详细分类\车型分类\MPV';
fileInfo_one = dir(path_one);
[PicName_one,PicNum_one] = GetPicInfo(fileInfo_one);

path_two = 'E:\data train01\车型分类\MPV';
fileInfo_two = dir(path_two);
[PicName_two,PicNum_two] = GetPicInfo(fileInfo_two);

xlsRange_one = ['A',num2str(1),':A',num2str(PicNum_one)];
xlsRange_two = ['B',num2str(1),':B',num2str(PicNum_two)];
xlswrite('result.xlsx',PicName_one,xlsRange_one);
xlswrite('result.xlsx',PicName_two,xlsRange_two);
