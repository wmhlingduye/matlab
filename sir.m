
function y=sir(t,x)
    a=0.8;  %感染率
    b=0.2;  %治愈率
    y=[-a*x(1)*x(2),a*x(1)*x(2)-b*x(2),b*x(2)]';
    