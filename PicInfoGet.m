function [ PicName,PicNum ] = PicInfoGet( path )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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

