clear;
[t,x]=ode45('sir',[0,50],[0.97 0.02 0.01]);

[t,x]
figure(1);
plot(t,x(:,1),'-',t,x(:,2),'--',t,x(:,3),'-.k')
title('SIR模型');
xlabel('ʱ��');
ylabel('����');
legend('������','����','�Ƴ���','3');
grid on;
figure(2);
plot(x(:,1),x(:,2));
title('i-sͼ�Σ�����ߣ�? ');
xlabel('s');
ylabel('i');
