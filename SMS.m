%为建模方便，忽略位姿误差
x = 0:5:95;
y = 0:5:45;
[xx,yy] = meshgrid(x,y);
% z = 2*ones(10,20);

% while max(z(:)) > 1 | min(z(:)) < -1
    z = 0.5*form_error();
% end

mesh(xx,yy,z);%关于数据显示的问题仍有待探究

x1 = reshape(xx,[],1);%把矩阵拉直成向量
y1 = reshape(yy,[],1);
z1 = reshape(z,[],1);

ptCloud = [x1,y1,z1];

% output = fopen('E:\data.txt','w');
% fprintf(output,'%f',ptCloud);
% fclose(output);
%array为矩阵
[r,c]=size(ptCloud);
fid=fopen('E:\桌面文件\学习\数值仿真\Point Cloud\data_0910.txt','w');
for i=1:r
    for j=1:c
        if j==c
            fprintf(fid,'%f\n',ptCloud(i,j));%如果是最后一个，就换行
        else
            fprintf(fid,'%f ',ptCloud(i,j));%如果不是最后一个，就空格
        end
    end
end
fclose(fid);