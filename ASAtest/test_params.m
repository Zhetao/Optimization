%Plot Function
%%
%{
x = -1:0.01:1;
y = [];
for i = 1 : size(x,2)
    y = [y test_cost_func1(x(i))];
end
plot(x,y);
%}
%Record trajactory
%% 
delete('ASAtest.txt');
tic
xinit = [-8];
xmin = [-10];
xmax = [10];
xtype = [-1];
asamin ('set', 'temperature_ratio_scale', 1e-12);

[fstar,xstar,grad,hessian,state] = asamin ('minimize', 'test_cost_func1', xinit, xmin, xmax, xtype)
toc

%Plot trajactory
%% 
fileID = fopen('ASAtest.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA)

