x1=[5.764,6.286,6.759,7.186,7.408];
y1=[0.648,1.202,1.823,2.526,3.360];
plot(x1,y1,':');
hold on;
axis([3,9,-1,5]);
ezplot('0.0507*x^2-0.0702*x*y+0.0381*y^2-0.4530*x+0.2642*y+1',[-1,8]);
grid on;
