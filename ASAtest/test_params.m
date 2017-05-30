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
asamin ('set', 'limit_acceptances', 10000);
asamin ('set', 'accepted_to_generated_ratio', 1e-6);
asamin ('set', 'sequential_parameters', -1);
asamin ('set', 'cost_precision', 1e-8);

asamin ('set', 'temperature_ratio_scale', 1e-9);
asamin ('set', 'cost_parameter_scale_ratio', 1);
asamin ('set', 'temperature_anneal_scale', 100);

[fstar,xstar,grad,hessian,state] = asamin ('minimize', 'test_cost_func1', xinit, xmin, xmax, xtype)
toc

%Plot trajactory
%% 
fileID = fopen('ASAtest.txt','r');
formatSpec = '%f';
sizeA = [1 Inf];
A = fscanf(fileID,formatSpec,sizeA);
fclose(fileID);
plot(A)
