function [PicName,PicNum] = GetPicInfo( path,fileInfo )
%GetPicInfo 获得文件夹中图片的数量和名称
%输入：保存图片的文件夹的信息
%输出：PicName:图片文件名
%      PicNum：图片数量

%程序员：Sun
%时间：2016.3.1
%版本号：Version1.0
FolderNum = 0;
for i = 1 : length(fileInfo)
    if strcmp(fileInfo(i).name, '.') || strcmp(fileInfo(i).name, '..')
        continue;
    else
        FolderNum = FolderNum + 1;
    end
end

PicNum = 0;
for i = 1 : FolderNum
    PicPath = strcat(path,fileInfo(i+2).name,'\*.jpg');
    PicInfo = dir(PicPath);
    for j = 1 : length(PicInfo)
        PicNum = PicNum + 1;
    end
end

PicName = cell(PicNum,1);
temp = 1;
for i = 1 : FolderNum
    PicPath = strcat(path,fileInfo(i+2).name,'\*.jpg');
    PicInfo = dir(PicPath);
    for j = 1 : length(PicInfo)
        PicName{temp} = PicInfo(j).name;
        temp = temp + 1;
    end
end

end

