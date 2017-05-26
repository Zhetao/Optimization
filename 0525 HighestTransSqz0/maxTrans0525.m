function goal = maxTrans0525(b2, b3)
%Cell width >50: abandon
if (2*b2+2*b3 >= 50)
    goal = 0;
    return 
end

%Setup COMSOL model
model = COMSOL_setup0525;

%Change the parameters
%model.param.set('b3', num2str(b3));
%model.mesh('mesh1').autoMeshSize(meshSize);
model.param.set('b2', [num2str(b2) '[mm]']);
model.param.set('b3', [num2str(b3) '[mm]']);

%Run and output max transmission
model.study('std1').run;
temp = mphglobal(model,{'abs(s21)'});
%display(temp);
goal = max(temp);