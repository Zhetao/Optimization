function out = COMSOL_setup0525
%
% COMSOL_setup0525.m
%
% Model exported on May 25 2017, 21:31 by COMSOL 5.2.1.152.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('\\cummer-vm-00.ee.duke.edu\rrs3\Zhetao\Optimization\0525 HighestTransSqz0');

model.label('COMSOL_setup0525.mph');

model.comments(['Untitled\n\n']);

model.param.set('a1', 'b1');
model.param.set('a2', 'b2');
model.param.set('a3', 'b3');
model.param.set('b1', '(50[mm]-2*b2-2*b3)/11');
model.param.set('b2', '2.8[mm]');
model.param.set('b3', '8[mm]');
model.param.set('d', '1.5[mm]');
model.param.set('D', '1.5[mm]');
model.param.set('H', '30[mm]');
model.param.set('loss', '0.09');
model.param.set('num', '3');
model.param.set('sqz', '0[mm]');
model.param.set('tot_W', '2*(6.5*d+4*b1+b2+b3)');
model.param.set('W', '0.13[m]');
model.param.set('width', '11*d+6*b1+2*b2+2*b3');

model.modelNode.create('comp1');

model.geom.create('geom1', 2);

model.file.create('libres1');
model.file.create('libres2');
model.file.create('libres3');
model.file.create('libres4');
model.file.create('libres5');
model.file.create('libres6');
model.file.create('libres7');
model.file.create('libres8');
model.file.create('libres9');
model.file.create('libres10');
model.file.create('libres11');
model.file.create('libres12');
model.file.create('libres13');
model.file.create('libres14');
model.file.create('libres15');
model.file.create('libres16');
model.file.create('libres17');
model.file.create('libres18');
model.file.create('libres19');
model.file.create('libres20');
model.file.create('libres21');
model.file.create('libres22');
model.file.create('libres23');
model.file.create('libres24');
model.file.create('libres25');
model.file.create('libres26');

model.mesh.create('mesh1', 'geom1');

model.geom('geom1').lengthUnit('mm');
model.geom('geom1').repairTolType('relative');
model.geom('geom1').selection.create('csel1', 'CumulativeSelection');
model.geom('geom1').selection('csel1').label('Cumulative Selection 1');
model.geom('geom1').selection.create('csel2', 'CumulativeSelection');
model.geom('geom1').selection('csel2').label('Cumulative Selection 2');
model.geom('geom1').selection.create('csel3', 'CumulativeSelection');
model.geom('geom1').selection('csel3').label('Cumulative Selection 3');
model.geom('geom1').selection.create('csel4', 'CumulativeSelection');
model.geom('geom1').selection('csel4').label('Cumulative Selection 4');
model.geom('geom1').selection.create('csel5', 'CumulativeSelection');
model.geom('geom1').selection('csel5').label('Cumulative Selection 5');
model.geom('geom1').create('r1', 'Rectangle');
model.geom('geom1').feature('r1').set('base', 'center');
model.geom('geom1').feature('r1').set('size', {'W' 'H'});
model.geom('geom1').feature('r1').set('pos', {'0' '0'});
model.geom('geom1').create('r3', 'Rectangle');
model.geom('geom1').feature('r3').set('contributeto', 'csel1');
model.geom('geom1').feature('r3').set('base', 'center');
model.geom('geom1').feature('r3').set('size', {'d' 'H-a3-2*D'});
model.geom('geom1').feature('r3').set('pos', {'-((num*2-1)*d+num*b1+b2+b3)' 'a3/2'});
model.geom('geom1').create('r8', 'Rectangle');
model.geom('geom1').feature('r8').set('contributeto', 'csel1');
model.geom('geom1').feature('r8').set('base', 'center');
model.geom('geom1').feature('r8').set('size', {'d' 'H-a1-2*D'});
model.geom('geom1').feature('r8').set('pos', {'-(num*2-3)*d-(num*2-3)*b1' 'a1/2'});
model.geom('geom1').create('b1', 'BezierPolygon');
model.geom('geom1').feature('b1').set('p', {'-width/2' '-width/2'; 'H/2' '-H/2'});
model.geom('geom1').feature('b1').set('w', {'1' '1'});
model.geom('geom1').feature('b1').set('degree', {'1'});
model.geom('geom1').create('b2', 'BezierPolygon');
model.geom('geom1').feature('b2').set('p', {'width/2' 'width/2'; 'H/2' '-H/2'});
model.geom('geom1').feature('b2').set('w', {'1' '1'});
model.geom('geom1').feature('b2').set('degree', {'1'});
model.geom('geom1').create('r4', 'Rectangle');
model.geom('geom1').feature('r4').active(false);
model.geom('geom1').feature('r4').set('contributeto', 'csel1');
model.geom('geom1').feature('r4').set('base', 'center');
model.geom('geom1').feature('r4').set('size', {'d' 'H-a3-2*D'});
model.geom('geom1').feature('r4').set('pos', {'-(num*2*d+2*(num-1)*b1+b2+b3)' '-a3/2'});
model.geom('geom1').create('r11', 'Rectangle');
model.geom('geom1').feature('r11').set('contributeto', 'csel1');
model.geom('geom1').feature('r11').set('base', 'center');
model.geom('geom1').feature('r11').set('size', {'d' 'H-a2-2*D'});
model.geom('geom1').feature('r11').set('pos', {'-((num*2-2)*d+num*b1+b2)' '-a2/2'});
model.geom('geom1').create('mir1', 'Mirror');
model.geom('geom1').feature('mir1').set('contributeto', 'csel1');
model.geom('geom1').feature('mir1').set('keep', true);
model.geom('geom1').feature('mir1').selection('input').named('csel1');
model.geom('geom1').create('r5', 'Rectangle');
model.geom('geom1').feature('r5').set('contributeto', 'csel1');
model.geom('geom1').feature('r5').set('base', 'center');
model.geom('geom1').feature('r5').set('size', {'((num*2-1)*d+num*b1+b2+b3)*2+d' 'D'});
model.geom('geom1').feature('r5').set('pos', {'0' '-H/2+D/2'});
model.geom('geom1').create('r6', 'Rectangle');
model.geom('geom1').feature('r6').set('contributeto', 'csel1');
model.geom('geom1').feature('r6').set('base', 'center');
model.geom('geom1').feature('r6').set('size', {'((num*2-1)*d+num*b1+b2+b3)*2+d' 'D'});
model.geom('geom1').feature('r6').set('pos', {'0' 'H/2-D/2'});
model.geom('geom1').create('r2', 'Rectangle');
model.geom('geom1').feature('r2').set('contributeto', 'csel2');
model.geom('geom1').feature('r2').set('base', 'center');
model.geom('geom1').feature('r2').set('size', {'d' 'H-a1-2*D-sqz+D'});
model.geom('geom1').feature('r2').set('pos', {'-((num*2-4)*d+(num-2)*2*b1)' '-(a1/2)-sqz/2-D/2'});
model.geom('geom1').create('arr1', 'Array');
model.geom('geom1').feature('arr1').set('size', {'num*2-3' '1'});
model.geom('geom1').feature('arr1').set('displ', {'(d+b1)*2' '0'});
model.geom('geom1').feature('arr1').set('contributeto', 'csel1');
model.geom('geom1').feature('arr1').selection('input').named('csel2');
model.geom('geom1').create('r12', 'Rectangle');
model.geom('geom1').feature('r12').set('contributeto', 'csel3');
model.geom('geom1').feature('r12').set('base', 'center');
model.geom('geom1').feature('r12').set('size', {'d' 'H-a1-2*D'});
model.geom('geom1').feature('r12').set('pos', {'-d-b1' 'a1/2'});
model.geom('geom1').create('arr2', 'Array');
model.geom('geom1').feature('arr2').set('size', {'(num-2)*2' '1'});
model.geom('geom1').feature('arr2').set('displ', {'(d+b1)*2' '0'});
model.geom('geom1').feature('arr2').set('contributeto', 'csel1');
model.geom('geom1').feature('arr2').selection('input').named('csel3');
model.geom('geom1').create('r9', 'Rectangle');
model.geom('geom1').feature('r9').set('contributeto', 'csel1');
model.geom('geom1').feature('r9').set('base', 'center');
model.geom('geom1').feature('r9').set('size', {'(num*2)*b1+(num*2-1)*d' 'sqz+D'});
model.geom('geom1').feature('r9').set('pos', {'0' '-(-H+sqz+d)/2'});
model.geom('geom1').create('uni1', 'Union');
model.geom('geom1').feature('uni1').set('contributeto', 'csel4');
model.geom('geom1').feature('uni1').set('intbnd', false);
model.geom('geom1').feature('uni1').selection('input').named('csel1');
model.geom('geom1').create('r10', 'Rectangle');
model.geom('geom1').feature('r10').active(false);
model.geom('geom1').feature('r10').set('contributeto', 'csel5');
model.geom('geom1').feature('r10').set('base', 'center');
model.geom('geom1').feature('r10').set('size', {'num*2*b1+(num*2-5)*d' 'sqz-d'});
model.geom('geom1').feature('r10').set('pos', {'0' '(H-d-sqz)/2'});
model.geom('geom1').create('dif1', 'Difference');
model.geom('geom1').feature('dif1').active(false);
model.geom('geom1').feature('dif1').selection('input2').named('csel5');
model.geom('geom1').feature('dif1').selection('input').named('csel4');
model.geom('geom1').feature('fin').set('repairtoltype', 'relative');
model.geom('geom1').run;

model.variable.create('var1');
model.variable('var1').model('comp1');
model.variable('var1').set('p_i', 'exp(-1i*acpr.k*x)[Pa]');
model.variable('var1').set('s11', 'intop1(acpr.p_t-p_i)/intop1(p_i)');
model.variable('var1').set('s21', 'intop2(acpr.p_t)/intop1(p_i)');
model.variable('var1').set('s21p', 's21*exp(i*acpr.k*(W-2*b3))');

model.material.create('mat1', 'Common', 'comp1');
model.material.create('mat2', 'Common', 'comp1');
model.material('mat2').selection.set([3]);

model.cpl.create('intop1', 'Integration', 'geom1');
model.cpl.create('intop2', 'Integration', 'geom1');
model.cpl('intop1').selection.geom('geom1', 1);
model.cpl('intop1').selection.set([1]);
model.cpl('intop2').selection.geom('geom1', 1);
model.cpl('intop2').selection.set([66]);

model.physics.create('acpr', 'PressureAcoustics', 'geom1');
model.physics('acpr').selection.set([1 3 5]);
model.physics('acpr').create('pwr1', 'PlaneWaveRadiation', 1);
model.physics('acpr').feature('pwr1').selection.set([1 66]);
model.physics('acpr').feature('pwr1').create('ipf1', 'IncidentPressureField', 1);
model.physics('acpr').feature('pwr1').feature('ipf1').selection.set([1 7 11 13 17 18 19 20 24 27 28 30 34 37 38 40 44 47 48 50 51 52 53 57]);
model.physics('acpr').create('ishb1', 'InteriorSoundHard', 1);
model.physics('acpr').create('nra1', 'NarrowRegionAcousticsModel', 2);
model.physics('acpr').feature('nra1').selection.set([1 3 5]);

model.mesh('mesh1').autoMeshSize(2);

model.material('mat1').label('Air 1');
model.material('mat1').propertyGroup('def').set('density', '1.25');
model.material('mat1').propertyGroup('def').set('soundspeed', '343');
model.material('mat2').label('Air 1.1');
model.material('mat2').propertyGroup('def').set('density', '1.25*(1-loss*i)');
model.material('mat2').propertyGroup('def').set('soundspeed', '343/sqrt(1-loss*i)');

model.physics('acpr').feature('pwr1').feature('ipf1').set('dir', {'1'; '0'; '0'});
model.physics('acpr').feature('pwr1').feature('ipf1').set('pamp', '1');
model.physics('acpr').feature('pwr1').feature('ipf1').set('c', 'acpr.c_c');
model.physics('acpr').feature('nra1').set('Hd', '0.0025');
model.physics('acpr').feature('nra1').active(false);

model.mesh('mesh1').run;

model.study.create('std1');
model.study('std1').create('freq', 'Frequency');

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').attach('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('p1', 'Parametric');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature.remove('fcDef');

model.study('std1').feature('freq').set('plist', 'range(2000,50,3000)');

model.sol('sol1').attach('std1');
model.sol('sol1').feature('v1').set('clist', {'range(2000,50,3000)[Hz]'});
model.sol('sol1').feature('v1').set('cname', {'freq'});
model.sol('sol1').feature('v1').set('clistctrl', {'p1'});
model.sol('sol1').feature('s1').feature('aDef').set('complexfun', true);
model.sol('sol1').feature('s1').feature('p1').set('preusesol', 'auto');
model.sol('sol1').feature('s1').feature('p1').set('pname', {'freq'});
model.sol('sol1').feature('s1').feature('p1').set('punit', {'Hz'});
model.sol('sol1').feature('s1').feature('p1').set('plistarr', {'range(2000,50,3000)'});
model.sol('sol1').feature('s1').feature('p1').set('pcontinuationmode', 'no');
%model.sol('sol1').runAll;

out = model;
