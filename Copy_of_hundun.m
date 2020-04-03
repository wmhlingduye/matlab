x0=abs(sin(randn));
lamda=0:0.001:2;
xn=x0;
for i=1:150
    xn=1-lamda.*xn.*xn;
end
for i=1:200
    xn=1-lamda.*xn.*xn;
    plot(lamda,xn,'k');
    hold on
end
