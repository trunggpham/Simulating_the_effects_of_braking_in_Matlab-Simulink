M = 4200;
Mf = 125;
Mr = 125;
Kfs = 120;
Krs = 180;
Bf = 25;
Br = 35;
Kft = 1100;
Krt = 1100;
l = 40000;
Lf = 55;
Lr = 65;
v0 = 352;   % 1 mile per hour (mph) = 17.6 inch per second (in/s)
Ab = 4;
L = 12;     % 1 feet (ft) = 12 inch (in)
D0 = 716;
A = [0 1 0 0 0 0 0 0
     -(Kfs+Krs)/M -(Bf+Br)/M Kfs/M Bf/M Krs/M Br/M (Krs*Lr-Kfs*Lf)/M (Br*Lr-Bf*Lf)/M
     0 0 0 1 0 0 0 0
     Kfs/Mf Bf/Mf -(Kfs+Kft)/Mf -Bf/Mf 0 0 Kfs*Lf/Mf Bf*Lf/Mf
     0 0 0 0 0 1 0 0
     Krs/Mr Br/Mr 0 0 -(Krs+Krt)/Mr -Br/Mr -Krs*Lr/Mr -Br*Lr/Mr
     0 0 0 0 0 0 0 1
     (Krs*Lr-Kfs*Lf)/l (Br*Lr-Bf*Lf)/l Kfs*Lf/l Bf*Lf/l -Krs*Lr/l -Br*Lr/l -(Kfs*Lf*Lf+Krs*Lr*Lr)/l -(Bf*Lf*Lf+Br*Lr*Lr)/l];
B = [0 0
     0 0
     0 0
     Kft/Mf 0
     0 0
     0 Krt/Mr
     0 0
     0 0];
C = [1 0 0 0 0 0 0 0
     0 0 1 0 0 0 0 0
     0 0 0 0 1 0 0 0
     0 0 0 0 0 0 1 0];
D = zeros(4,2);
sim mohinh1_2_2015a
figure(1);
subplot(2,1,1);
plot(t,uf,'r');
grid on;
grid minor;
set(gca,'XTick',[1.8:0.05:2.4],'YTick',[0:4],'FontSize',11); %??nh ??n v? trên tr?c to? ??
axis([1.75 2.45 -0.5 4.5]);
ylabel('uf, [in]');
xlabel('Thoi gian t, [s]');
title('Front tire displacement versus time');

subplot(2,1,2);
plot(t,ur,'k');
grid on;
grid minor;
axis([1.75 2.45 -0.5 4.5])
set(gca,'XTick',[1.8:0.05:2.4],'YTick',[0:4],'FontSize',11); %??nh ??n v? trên tr?c to? ??
ylabel('ur, [in]');
xlabel('Thoi gian t, [s]');
title('Rear tire displacement versus time');

figure(2);
subplot(4,1,1);
plot(t,y,'r');
grid on;
grid minor;
axis([1.5 3.5 -1 1])
set(gca,'XTick',[1.5:0.25:3.5],'YTick',[-1:0.5:1],'FontSize',11);
ylabel('y,[in]');
title('Vehicle C.G. Displacement versus time');

subplot(4,1,2);
plot(t,yf,'b--');
grid on;
grid minor;
axis([1.5 3.5 -1 4])
set(gca,'XTick',[1.5:0.25:3.5],'YTick',[-1:4],'FontSize',11);
ylabel('yf,[in]');
title('Front axle displacement versus time');

subplot(4,1,3);
plot(t,yr,'m');
grid on;
grid minor;
axis([1.5 3.5 -1 4])
set(gca,'XTick',[1.5:0.25:3.5],'YTick',[-1:4],'FontSize',11);
ylabel('yr,[in]');
title('Rear axle displacement versus time');

subplot(4,1,4);
plot(t,phi,'k--');
grid on;
grid minor;
axis([1.5 3.5 -0.5 0.5])
set(gca,'XTick',[1.5:0.25:3.5],'YTick',[-0.5:0.25:0.5],'FontSize',11);
ylabel('phi, [deg]');
xlabel('Thoi gian, t[s]');
title('Vehicle pitch angle versus time');

figure(3);
subplot(4,1,1);
plot(t,y,'r');
grid on;
grid minor;
ylabel('y');
title('y');

subplot(4,1,2);
plot(t,yf,'b--');
grid on;
grid minor;
ylabel('yf');
title('yf');

subplot(4,1,3);
plot(t,yr,'m');
grid on;
grid minor;
ylabel('yr');
title('yr');

subplot(4,1,4);
plot(t,phi,'k--');
grid on;
grid minor;
ylabel('phi');
title('phi, [deg]');
