function [PicName,PicNum] = GetPicInfo( path,fileInfo )
%GetPicInfo ����ļ�����ͼƬ������������
%���룺����ͼƬ���ļ��е���Ϣ
%�����PicName:ͼƬ�ļ���
%      PicNum��ͼƬ����

%����Ա��Sun
%ʱ�䣺2016.3.1
%�汾�ţ�Version1.0
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

