function [PicName,PicNum] = GetPicInfo( fileInfo )
%GetPicInfo ����ļ�����ͼƬ������������
%���룺����ͼƬ���ļ��е���Ϣ
%�����PicName:ͼƬ�ļ���
%      PicNum��ͼƬ����

%����Ա��Sun
%ʱ�䣺2016.3.1
%�汾�ţ�Version1.0
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

