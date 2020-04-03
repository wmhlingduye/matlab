clc;
clear;

%随机获取150个点
X = [randn(50,3)+ones(50,3);randn(50,3)-ones(50,3);randn(50,3)];
 
%调用Kmeans函数
%X N*P的数据矩阵
%Idx N*1的向量,存储的是每个点的聚类标号
%Ctrs K*P的矩阵,存储的是K个聚类质心位置
%SumD 1*K的和向量,存储的是类间所有点与该类质心点距离之和
%D N*K的矩阵，存储的是每个点与所有质心的距离;
 
[Idx,Ctrs,SumD,D] = kmeans(X,3);
 
%画出聚类为1的点。X(Idx==1,1),为第一类的样本的第一个坐标；X(Idx==1,2)为第二类的样本的第二个坐标
plot3(X(Idx==1,1),X(Idx==1,2),X(Idx==1,3),'r.','MarkerSize',14)
hold on
plot3(X(Idx==2,1),X(Idx==2,2),X(Idx==2,3),'b.','MarkerSize',14)
hold on
plot3(X(Idx==3,1),X(Idx==3,2),X(Idx==3,3),'g.','MarkerSize',14)
 
%绘出聚类中心点,kx表示是圆形
plot3(Ctrs(:,1),Ctrs(:,2),Ctrs(:,3),'kx','MarkerSize',14,'LineWidth',4)
plot3(Ctrs(:,1),Ctrs(:,2),Ctrs(:,3),'kx','MarkerSize',14,'LineWidth',4)
plot3(Ctrs(:,1),Ctrs(:,2),Ctrs(:,3),'kx','MarkerSize',14,'LineWidth',4)
grid on;
legend('Cluster 1','Cluster 2','Cluster 3','Centroids','Location','NW')
