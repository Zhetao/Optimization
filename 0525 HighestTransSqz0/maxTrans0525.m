function goal = maxTrans0525
model = COMSOL_setup0525;
%model.param.set('b3', num2str(b3));
%model.mesh('mesh1').autoMeshSize(meshSize);
model.study('std1').run;
temp = mphglobal(model,{'abs(s21)'});
display(temp);
goal = max(temp);