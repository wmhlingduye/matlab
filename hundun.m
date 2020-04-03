x0=abs(sin(randn));
lamda=0:0.001:4;
xn=x0;
for i=1:150
    xn=lamda.*xn.*(1-xn);
end
for i=1:200
    xn=lamda.*xn.*(1-xn);
    plot(lamda,xn,'k');
    hold on
end
