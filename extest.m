%ȡ'dataform_train.csv'��ǰ���У���һ���¶ȡ���ѹ�ĵ�����
%�¶ȡ���ѹ��ȡ��1,11,21����81���㣬���õ�9��������
%�ֱ���ö��ζ���ʽ��ϡ�pchip��ֵ��spline��ֵ�İ취��
%����[-20,69]90�����ֵ����ͬһ��ͼ���ϻ���ͼ�񣬷ֱ�������
%
%2. ��һ������500����������1,11,21����81���㣬���ֲ�ֵ��Ϸ����µ����


clear;

minput=dlmread('dataform_train.csv');
target=minput(1:2,:);
pretemp=target(1,1:10:90);
prevolt=target(2,1:10:90);
%%%ʹ�ö��ζ���ʽ��ϣ�����90�����ֵ
p=polyfit(pretemp,prevolt,2);
targetvolt1=polyval(p,-20:69);
%%%ʹ��pchip��ֵ������90�����ֵ
targetvolt2=pchip(pretemp,prevolt,target);
%%%ʹ��spline��ֵ������90�����ֵ
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

