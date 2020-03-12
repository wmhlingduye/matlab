clc;
clear;

%�����ȡ150����
X = [randn(50,3)+ones(50,3);randn(50,3)-ones(50,3);randn(50,3)];
 
%����Kmeans����
%X N*P�����ݾ���
%Idx N*1������,�洢����ÿ����ľ�����
%Ctrs K*P�ľ���,�洢����K����������λ��
%SumD 1*K�ĺ�����,�洢����������е���������ĵ����֮��
%D N*K�ľ��󣬴洢����ÿ�������������ĵľ���;
 
[Idx,Ctrs,SumD,D] = kmeans(X,3);
 
%��������Ϊ1�ĵ㡣X(Idx==1,1),Ϊ��һ��������ĵ�һ�����ꣻX(Idx==1,2)Ϊ�ڶ���������ĵڶ�������
plot3(X(Idx==1,1),X(Idx==1,2),X(Idx==1,3),'r.','MarkerSize',14)
hold on
plot3(X(Idx==2,1),X(Idx==2,2),X(Idx==2,3),'b.','MarkerSize',14)
hold on
plot3(X(Idx==3,1),X(Idx==3,2),X(Idx==3,3),'g.','MarkerSize',14)
 
%����������ĵ�,kx��ʾ��Բ��
plot3(Ctrs(:,1),Ctrs(:,2),Ctrs(:,3),'kx','MarkerSize',14,'LineWidth',4)
plot3(Ctrs(:,1),Ctrs(:,2),Ctrs(:,3),'kx','MarkerSize',14,'LineWidth',4)
plot3(Ctrs(:,1),Ctrs(:,2),Ctrs(:,3),'kx','MarkerSize',14,'LineWidth',4)
grid on;
legend('Cluster 1','Cluster 2','Cluster 3','Centroids','Location','NW')
