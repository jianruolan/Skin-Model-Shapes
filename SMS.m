%Ϊ��ģ���㣬����λ�����
x = 0:5:95;
y = 0:5:45;
[xx,yy] = meshgrid(x,y);
% z = 2*ones(10,20);

% while max(z(:)) > 1 | min(z(:)) < -1
    z = 0.5*form_error();
% end

mesh(xx,yy,z);%����������ʾ���������д�̽��

x1 = reshape(xx,[],1);%�Ѿ�����ֱ������
y1 = reshape(yy,[],1);
z1 = reshape(z,[],1);

ptCloud = [x1,y1,z1];

% output = fopen('E:\data.txt','w');
% fprintf(output,'%f',ptCloud);
% fclose(output);
%arrayΪ����
[r,c]=size(ptCloud);
fid=fopen('E:\�����ļ�\ѧϰ\��ֵ����\Point Cloud\data_0910.txt','w');
for i=1:r
    for j=1:c
        if j==c
            fprintf(fid,'%f\n',ptCloud(i,j));%��������һ�����ͻ���
        else
            fprintf(fid,'%f ',ptCloud(i,j));%����������һ�����Ϳո�
        end
    end
end
fclose(fid);