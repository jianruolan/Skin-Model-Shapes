% function for form error
function z = form_error()
x = 0:5:95;
y = 0:5:45;
z = zeros(10,20);
[xx,yy] = meshgrid(x,y);
% z = kernel(xx,yy,0,1);
% mesh(xx,yy,z);

lambda = -1 + 2.*rand(200,1);

for i = 0:19
    for j = 0:9
        temp1 = lambda(10*i+j+1); 
        temp2 = kernel(xx,yy,i,j);     
        z = z + temp1*temp2;
    end
end

%mesh(xx,yy,z);