function [ PicName,PicNum ] = PicInfoGet( path )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
fileInfo = dir(path);
PicNum = 0;
for k = 1 : length(fileInfo)
    if strcmp(fileInfo(k).name,'.')||strcmp(fileInfo(k).name,'..')
        continue;
    else
        PicNum = PicNum + 1;
    end
end

PicName = cell(PicNum,1);
for k = 1 : length(fileInfo)
    if strcmp(fileInfo(k).name,'.')||strcmp(fileInfo(k).name,'..')
        continue;
    else
        PicName{k-2} = fileInfo(k).name;
    end
end

end

