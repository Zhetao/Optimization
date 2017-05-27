function [fstar,xstar,grad,hessian,state] = ASAtrans_main
xinit = [-3;-2];
xmin = [-10;-10];
xmax = [10;10];
xtype = [-1;-1];
[fstar,xstar,grad,hessian,state] = asamin ('minimize', 'test_CostFunc', xinit, xmin, xmax, xtype)