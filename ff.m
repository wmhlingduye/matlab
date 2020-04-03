t = 0:0.01:1;
k = 1:2:5;
xt = sin(2*pi*t'*k)*(1./k');
xt = xt';

plot(t,xt,'o');
xlabel('t');
ylabel('amplititude');
