function [PicName,PicNum] = GetPicInfo( fileInfo )
%GetPicInfo 获得文件夹中图片的数量和名称
%输入：保存图片的文件夹的信息
%输出：PicName:图片文件名
%      PicNum：图片数量

%程序员：Sun
%时间：2016.3.1
%版本号：Version1.0
PicNum = 0;
for i = 1 : length(fileInfo)
    if strcmp(fileInfo(i).name, '.') || strcmp(fileInfo(i).name, '..')
        continue;
    else
        PicNum = PicNum + 1;
    end
end

PicName = cell(PicNum,1);
for i = 1 : length(fileInfo)
    if strcmp(fileInfo(i).name,'.') || strcmp(fileInfo(i).name,'..')
        continue;
    else
        PicName{i-2} = fileInfo(i).name;
    end
end

end

