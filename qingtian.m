fs = 44100;
dt = 1/fs;
T16 = 0.2;
t16 = [0:dt:T16];
[temp,k] = size(t16);
t2_5 = linspace(0,10*T16,10*k);
t2_25 = linspace(0,9*T16,9*k);
t2 = linspace(0,8*T16,8*k);
t4_5 = linspace(0,6*T16,6*k);
t4 = linspace(0,4*T16,4*k);
t6 = linspace(0,3*T16,3*k);
t8 = linspace(0,2*T16,2*k);
t12 = linspace(0,1.5*T16,1.5*k);
[temp,i] = size(t4);
[temp,j] = size(t8);
 
mod2_5 = sin(pi*t2_5/t2_5(end));
mod2_25 = sin(pi*t2_25/t2_25(end));
mod4 = sin(pi*t4/t4(end));
mod4_5 = sin(pi*t4_5/t4_5(end));
mod6 = sin(pi*t6/t6(end));
mod8 = sin(pi*t8/t8(end));
mod12 = sin(pi*t12/t12(end));
mod16 = sin(pi*t16/t16(end));
f0 = 2*146.8;
ScaleTable = [2/3 3/4 5/6 15/16 ...
1 9/8 5/4 4/3 3/2 5/3 9/5 15/8 ...
2 9/4 5/2 8/3 3 10/3 15/4 4 ...
1/2 9/16 5/8];
 
% 1/4 notes
do0f = mod4.*cos(2*pi*ScaleTable(21)*f0*t4);
re0f = mod4.*cos(2*pi*ScaleTable(22)*f0*t4);
mi0f = mod4.*cos(2*pi*ScaleTable(23)*f0*t4);
fa0f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
so0f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
la0f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
ti0f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
do1f = mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
re1f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
mi1f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
fa1f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
so1f = mod4.*cos(2*pi*ScaleTable(9)*f0*t4);
la1f = mod4.*cos(2*pi*ScaleTable(10)*f0*t4);
tb1f = mod4.*cos(2*pi*ScaleTable(11)*f0*t4);
ti1f = mod4.*cos(2*pi*ScaleTable(12)*f0*t4);
do2f = mod4.*cos(2*pi*ScaleTable(13)*f0*t4);
re2f = mod4.*cos(2*pi*ScaleTable(14)*f0*t4);
mi2f = mod4.*cos(2*pi*ScaleTable(15)*f0*t4);
fa2f = mod4.*cos(2*pi*ScaleTable(16)*f0*t4);
so2f = mod4.*cos(2*pi*ScaleTable(17)*f0*t4);
la2f = mod4.*cos(2*pi*ScaleTable(18)*f0*t4);
ti2f = mod4.*cos(2*pi*ScaleTable(19)*f0*t4);
do3f = mod4.*cos(2*pi*ScaleTable(20)*f0*t4);
blkf = zeros(1,i);
 
% 1/8 notes
do0e = mod8.*cos(2*pi*ScaleTable(21)*f0*t8);
fa0e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
so0e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
la0e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
ti0e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);
do1e = mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
do1_2_5 = mod2_5.*cos(2*pi*ScaleTable(5)*f0*t2_5);
do1_6 = mod6.*cos(2*pi*ScaleTable(5)*f0*t6);
re1e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
re1_2_5 = mod2_5.*cos(2*pi*ScaleTable(6)*f0*t2_5);
re1_4_5 = mod4_5.*cos(2*pi*ScaleTable(6)*f0*t4_5);
mi1e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
mi1_2_25 = mod2_25.*cos(2*pi*ScaleTable(7)*f0*t2_25);
mi1_2_5 = mod2_5.*cos(2*pi*ScaleTable(7)*f0*t2_5);
fa1e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
so1e = mod8.*cos(2*pi*ScaleTable(9)*f0*t8);
la1e = mod8.*cos(2*pi*ScaleTable(10)*f0*t8);
la1_6 = mod6.*cos(2*pi*ScaleTable(10)*f0*t6);
tb1e = mod8.*cos(2*pi*ScaleTable(11)*f0*t8);
ti1e = mod8.*cos(2*pi*ScaleTable(12)*f0*t8);
do2e = mod8.*cos(2*pi*ScaleTable(13)*f0*t8);
do2_4_5 = mod4_5.*cos(2*pi*ScaleTable(13)*f0*t4_5);
do2_2_5 = mod2_5.*cos(2*pi*ScaleTable(13)*f0*t2_5);
re2e = mod8.*cos(2*pi*ScaleTable(14)*f0*t8);
mi2e = mod8.*cos(2*pi*ScaleTable(15)*f0*t8);
fa2e = mod8.*cos(2*pi*ScaleTable(16)*f0*t8);
so2e = mod8.*cos(2*pi*ScaleTable(17)*f0*t8);
la2e = mod8.*cos(2*pi*ScaleTable(18)*f0*t8);
ti2e = mod8.*cos(2*pi*ScaleTable(19)*f0*t8);
do3e = mod8.*cos(2*pi*ScaleTable(20)*f0*t8);
blke = zeros(1,j);
 
% 1/16 notes
fa0s = mod16.*cos(2*pi*ScaleTable(1)*f0*t16);
so0s = mod16.*cos(2*pi*ScaleTable(2)*f0*t16);
la0s = mod16.*cos(2*pi*ScaleTable(3)*f0*t16);
ti0s = mod16.*cos(2*pi*ScaleTable(4)*f0*t16);
do1s = mod16.*cos(2*pi*ScaleTable(5)*f0*t16);
do1_12 = mod12.*cos(2*pi*ScaleTable(5)*f0*t12);
re1s = mod16.*cos(2*pi*ScaleTable(6)*f0*t16);
mi1s = mod16.*cos(2*pi*ScaleTable(7)*f0*t16);
fa1s = mod16.*cos(2*pi*ScaleTable(8)*f0*t16);
so1s = mod16.*cos(2*pi*ScaleTable(9)*f0*t16);
la1s = mod16.*cos(2*pi*ScaleTable(10)*f0*t16);
tb1s = mod16.*cos(2*pi*ScaleTable(11)*f0*t16);
ti1s = mod16.*cos(2*pi*ScaleTable(12)*f0*t16);
do2s = mod16.*cos(2*pi*ScaleTable(13)*f0*t16);
re2s = mod16.*cos(2*pi*ScaleTable(14)*f0*t16);
mi2s = mod16.*cos(2*pi*ScaleTable(15)*f0*t16);
fa2s = mod16.*cos(2*pi*ScaleTable(16)*f0*t16);
so2s = mod16.*cos(2*pi*ScaleTable(17)*f0*t16);
la2s = mod16.*cos(2*pi*ScaleTable(18)*f0*t16);
ti2s = mod16.*cos(2*pi*ScaleTable(19)*f0*t16);
do3s = mod16.*cos(2*pi*ScaleTable(20)*f0*t16);
blks = zeros(1,k);
 
violin = [blke so1e so1e do1e do1f re1e mi1e...
blke so1e so1e do1e do1e re1s mi1s re1e so0e...
blke so1e so1e do1e do1f re1e mi1e...
blke mi1f re1s mi1s fa1s mi1s re1s fa1s mi1e do1e...
so0e do1e so1e mi1e fa1e mi1e re1e do1s re1s...
mi1e mi1e mi1e mi1e re1s mi1s re1e do1f...
so0e do1e re1e mi1e fa1e mi1e re1e do1s re1s...
mi1e mi1e mi1e mi1e re1s mi1s re1e do1_12 blke ti1s...
do1s do1s do1s do1s ti1s do1e do1e do1s do1s do1s ti1s do1e...
do1e do1s do1s do1s ti1s do1e do1e do1s do1s do1s so1s so1e so1s...
blks so1s so1s so1s so1s so1e so1s so1s so1s so1s so1s so1s fa1s mi1s...
mi1_2_25 blkf do1s do1s do1s do1s...
la0e ti0e do1e so1e fa1e mi1e do1e do1_6...
blkf do1s do1s do1s do1s mi1e do1e...
la0e ti0e do1e so1e fa1e mi1e do1e...
re1_2_5 blkf blkf...
mi1e re1e fa1e mi1f do1e so1e ti1e...
do2e ti1e so1e do1f do1e la1e la1e...
blke la1e so1e so1f so1e fa1e mi1e...
re1e mi1e fa1e mi1_2_5...
mi1e fa1e so1e mi1f fa1e so1e ti1e...
re2e ti1e do2e do2_4_5 blke do2e...
do2e so1e so1e la1e so1e fa1e re1e mi1e...
fa1e so1e la1e do1e la1_6 ti1s ti1f...
mi1e re1e fa1e mi1f do1e so1e ti1e...
do2e ti1e so1e do1f do1e la1e la1e...
blke la1e so1e so1f so1e fa1e mi1e...
re1e mi1e fa1e mi1_2_5...
mi1e fa1e so1e mi1f fa1e so1e ti1e...
re2e ti1e do2e do2_4_5 blke do2e...
do2e so1e so1e la1e so1e fa1e la0e ti0e...
do1e re1e mi1e re1_4_5 mi1e do1_2_5];
 
s = violin;
s = s/max(s);
 
sound(s,fs);
audiowrite('Qingtian.wav',violin,fs)