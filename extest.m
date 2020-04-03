%取'dataform_train.csv'的前两行，即一组温度、电压的点的组合
%温度、电压各取第1,11,21……81个点，即得到9个点的组合
%分别采用二次多项式拟合、pchip插值、spline插值的办法，
%估算[-20,69]90个点的值，在同一个图窗上画出图像，分别计算误差
%
%2. 进一步计算500组样本，第1,11,21……81个点，三种插值拟合方法下的误差


clear;

minput=dlmread('dataform_train.csv');
target=minput(1:2,:);
pretemp=target(1,1:10:90);
prevolt=target(2,1:10:90);
%%%使用二次多项式拟合，计算90个点的值
p=polyfit(pretemp,prevolt,2);
targetvolt1=polyval(p,-20:69);
%%%使用pchip插值，计算90个点的值
targetvolt2=pchip(pretemp,prevolt,target);
%%%使用spline插值，计算90个点的值
targetvolt3=spline(pretemp,prevolt,target);

hold on
plot(pretemp,prevolt,'*',target(1,:),target(2,:),'r')
plot(target(1,:),targetvolt1,'b--',target(1,:),targetvolt2,'g--',target(1,:),targetvolt3,'m--');
legend('sampling points','original curve','polynomial curve','pchip curve','spline curve');
xlabel('temprature');ylabel('voltage');
title('comparison between curve fitting & interpolation')
hold off

err1=mean(abs(targetvolt1-target(2,:)));
err2=mean(abs(targetvolt2-target(2,:)));
err3=mean(abs(targetvolt3-target(2,:)));

