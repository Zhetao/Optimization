function [myCost, myFlag] = test_cost_func3(x)
%if (x(1) <= 5)&&(x(1) >= -5)&&(x(2) <= 5)&&(x(2) >= -5)
    fileID = fopen('ASAtest.txt','a');
    fmt = '%5f\n';
    fprintf(fileID, fmt, x);
    fclose(fileID);
    
    myCost = x^2;
    myFlag = 1;
%else
 %   myCost = 9999;
 %   myFlag = 0;
%end
%myCost = -(Y+47)*sin(sqrt(abs(X/2+Y+47)))-X*sin(sqrt(abs(X-(Y+47))))                