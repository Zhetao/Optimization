function [cost_value, cost_flag] = test_cost_func1(x)%cost_value = test_cost_func1 (x)
%
%
%  $Id: test_cost_func1.m,v 1.39 2011/02/18 16:49:47 ssakata Exp $
%
fileID = fopen('ASAtest.txt','a');
fmt = '%5f\n';
fprintf(fileID, fmt, x);
fclose(fileID);
s_i = 0.2;  
t_i = 0.05;
c_r = 0.15;

q_n = 0.0;
parameter_dimension = 1;

for i = 1 : parameter_dimension,
  j = mod(i-1,4);
  switch (j)
     case 0, d_i = 1.0;
     case 1, d_i = 1000.0;
     case 2, d_i = 10.0;
     otherwise, d_i = 100.0;
  end
  if x(i) > 0.0
    k_i = fix(x(i) / s_i + 0.5);
  elseif x(i) < 0.0
    k_i = fix(x(i) / s_i - 0.5);
  else
    k_i = 0;
  end

  if abs (k_i * s_i - x(i)) < t_i
    if k_i < 0
      z_i = k_i * s_i + t_i;
    elseif k_i > 0
      z_i = k_i * s_i - t_i;
    else
      z_i = 0.0;
    end
    q_n = q_n + c_r * d_i * z_i * z_i;
  else
    q_n = q_n + d_i * x(i) * x(i);
  end
end;  
cost_value = q_n;
cost_flag=1;
display(['x=' num2str(x) ',cost_value = ' num2str(cost_value)]);
