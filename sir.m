
function y=sir(t,x)
    a=0.8;  %��Ⱦ��
    b=0.2;  %������
    y=[-a*x(1)*x(2),a*x(1)*x(2)-b*x(2),b*x(2)]';
    