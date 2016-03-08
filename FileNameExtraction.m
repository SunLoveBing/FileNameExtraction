clear all;
close all;
clc;

path_one = 'D:\Landmark Detection\Database\车型';
[PicName_one,PicNum_one] = PicInfoGet(path_one);

path_two = 'D:\Landmark Detection\Database\有无小侧窗';
[PicName_two,PicNum_two] = PicInfoGet(path_two);

xlsRange_one = ['A',num2str(1),':A',num2str(PicNum_one)];
xlsRange_two = ['B',num2str(1),':B',num2str(PicNum_two)];
xlswrite('D:\Landmark Detection\Experiment Result\result01.xlsx',PicName_one,xlsRange_one);
xlswrite('D:\Landmark Detection\Experiment Result\result01.xlsx',PicName_two,xlsRange_two);
