% clear all;
close all;
clc;


global h_ref;
global d_ref;
global T_ref;


h_ref=0.4;
d_ref=1.0;
U_mean=0.1;
T_ref=h_ref/U_mean;


file_tag=['S'];
t1=400;  t2=1600;
p1=59; p2=90;

time=(linspace(t1,t2,(t2-t1)+1))*0.01;

load(['uv_1',file_tag,'.mat']); 

uu1=[];
for i=t1:t2
    uu1=[uu1, uu{i}(p1,p2)];
end;

load(['uv_2',file_tag,'.mat']);

uu2=[];
for i=t1:t2 
    uu2=[uu2, uu{i}(p1,p2)];
end;

load(['uv_3',file_tag,'.mat']); 
uu3=[];
for i=t1:t2
    uu3=[uu3, uu{i}(p1,p2)];
end;

load(['uv_4',file_tag,'.mat']);
uu4=[];
for i=t1:t2
    uu4=[uu4, uu{i}(p1,p2)];
end;

load(['uv_5',file_tag,'.mat']); 
uu5=[];
for i=t1:t2
    uu5=[uu5, uu{i}(p1,p2)];
end;

load(['uv_6',file_tag,'.mat']);
uu6=[];
for i=t1:t2
    uu6=[uu6, uu{i}(p1,p2);];
end;


% figure
figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',20,'TickLabelInterpreter','latex','LineWidth',1.5,'Parent',figure1,'XScale','linear','Yscale','linear','fontsize',24,...
    'XTick',[1 2 3 4],'YTick',[0 5 10 15],'fontsize',24,...
   'Position',[0.055 0.26 0.835447922288181 0.67]); % adjust by hand
box(axes1,'on');
hold(axes1,'all');

Position = [0 0.0 8*275 275];
set(figure1,'Position',Position);

% plot(U_A_single(:,1)./T_ref,U_A_single(:,2),'r','linewidth',2,'DisplayName','Re=200'); hold on
% % 
% % for double filament tip positions
plot(time./T_ref, uu1./U_mean,'Color',[0,0,0],'linewidth',2,'DisplayName','$rigid$'); hold on
plot(time./T_ref, uu2./U_mean,'Color',[1,0,0],'linewidth',2,'DisplayName','$Ca=0.0008$'); hold on
plot(time./T_ref, uu3./U_mean,'Color',[0,0,1],'linewidth',2,'DisplayName','$Ca=0.008$'); hold on
plot(time./T_ref, uu4./U_mean,'Color',[1,0,1],'linewidth',2,'DisplayName','$Ca=0.02$'); hold on
plot(time./T_ref, uu5./U_mean,'Color',[.5,.5,.5],'linewidth',2,'DisplayName','$Ca=0.04$'); hold on
plot(time./T_ref, uu6./U_mean,'Color',[.5,0,0],'linewidth',2,'DisplayName','$Ca=0.06$'); hold on


% plot(U_A_double(:,1)./T_ref,U_A_double(:,4)./h_ref,'b','linewidth',2,'DisplayName','filament_2'); hold on

xlim([1 4])
ylim([0 15]) 

xlabel('$t/\tau$','FontSize',24,'Interpreter','latex');
ylabel('$U_x/U_x(mean)$','FontSize',24,'Interpreter','latex');


% Create legend
legend(axes1,'show');
set(legend,'Position',[0.89647282422984 0.274045461828059 0.0977996294680069 0.651999985434792],...
    'Interpreter','latex',...
    'FontSize',18);

[f_1,E_1]=myfft_trans(time,uu1);
[f_2,E_2]=myfft_trans(time,uu2);
[f_3,E_3]=myfft_trans(time,uu3);
[f_4,E_4]=myfft_trans(time,uu4);
[f_5,E_5]=myfft_trans(time,uu5);
[f_6,E_6]=myfft_trans(time,uu6);


St_ref=h_ref/U_mean;

St_ref1=1/971.066;  St_ref2=1/3.0707;  St_ref3=1/0.971066;  
St_ref4=1/0.6141;  St_ref5=1/0.4342; St_ref6=1/0.354583;

St_1=f_1*St_ref;
St_2=f_2*St_ref;
St_3=f_3*St_ref;
St_4=f_4*St_ref;
St_5=f_5*St_ref;
St_6=f_6*St_ref;

% St_1=f_1*St_ref1;
% St_2=f_2*St_ref2;
% St_3=f_3*St_ref3;
% St_4=f_4*St_ref4;
% St_5=f_5*St_ref5;
% St_6=f_6*St_ref6;


%%%---Strouhal No.-----------
St=[St_1; St_2; St_3; St_4; St_5; St_6;];
%%%--------------------------

%// Define the x values
StMat =St'; %// For plot3
% StMat = repmat(St, 1, 5); %// For plot3

size(StMat)
%// Define y values
y = [0 1 2 3 4 5];

dd=((t2-t1)*0.5)+1;
yMat = repmat(y,dd,1); %//For plot3
size(yMat)

%// Define z values
z_1 = E_1./max(E_1);
z_2 = E_2./max(E_2);
z_3 = E_3./max(E_3);
z_4 = E_4./max(E_4);
z_5 = E_5./max(E_5);
z_6 = E_6./max(E_6);

zMat = [z_1; z_2; z_3; z_4; z_5; z_6];%// For plot3
zMat = zMat';
size(zMat)

% figure
figure2= figure('Color',[1 1 1],'Visible','on'); 

% Create axes
axes3 =axes();
hold(axes3,'on');

% Set the remaining axes properties
set(axes3,'fontsize',20,'TickLabelInterpreter','latex','XTick',[0 20 40 60 80 100],'YTick',[0 1 2 3 4 5],...
    'YTickLabel',...
    {'$rigid$','$0.0008$','$0.008$','$0.02$','$0.04$','$0.06$'});

% patch([1,1,1,1],[2,2,6,6],[1,0,0,1],'r','FaceColor','c','FaceAlpha',0.03);


plot31=plot3(StMat, yMat, zMat, 'r','linewidth',2); %// Make all traces blue
set(plot31(1),'Color',[0,0,0]);
set(plot31(2),'Color',[1,0,0]);
set(plot31(3),'Color',[0,0,1]);
set(plot31(4),'Color',[1,0,1]);
set(plot31(5),'Color',[.5,.5,.5]);
set(plot31(6),'Color',[.5,0,0]);
% set(plot31(7),'Color',[0.5,0.8,.3]);

ylim([0 5])
  xlim([0.1 40]);
set(gcf, 'Position',  [10, 10, 800, 600])

%zlim([0 10])
%  xlim([0 15]);

% Create zlabel
zlabel('$E/ E_{max}$','FontSize',30,'Interpreter','latex');

% Create ylabel
ylabel('$Ca$','FontSize',30,'Interpreter','latex');

% Create xlabe
xlabel('$St_f$','FontSize',30,'Interpreter','latex');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 12]);
view(axes3,[40 40]);
grid(axes3,'on');


% fun
% % ---------------------------------------
beginx=0.17;
beginy=0.17;
xsize=0.8;
ysize=0.8;

figure4= figure('Color',[1 1 1],'Visible','on');  
axes4  = axes('fontsize',18,'LineWidth',2.5,'Parent',figure4,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'YTick',[0 0.5 1],'fontsize',14,'Position',[beginx beginy xsize ysize]); % adjust by hand
box(axes4,'on');
hold(axes4,'all');


plot(St_1,E_1./max(E_1),'Color',[0,0,0],'linewidth',2,'DisplayName','0.25Hz'); hold on
plot(St_2,E_2./max(E_2),'Color',[1,0,0],'linewidth',2,'DisplayName','0.50Hz'); hold on
plot(St_3,E_3./max(E_3),'Color',[0,0,1],'linewidth',2,'DisplayName','1.00Hz'); hold on
plot(St_4,E_4./max(E_4),'Color',[1,0,1],'linewidth',2,'DisplayName','2.00Hz'); hold on
plot(St_5,E_5./max(E_5),'Color',[.5,.5,.5],'linewidth',2,'DisplayName','4.00Hz'); hold on
plot(St_6,E_6./max(E_6),'Color',[.5,0,0],'linewidth',2,'DisplayName','8.00Hz'); hold on
% plot(St_S,E_S./max(E_S),'Color',[0,1,0]','linewidth',2,'DisplayName','Steady'); hold on

% Create legend
legend(axes4,'show'); 

xlabel('\omega','fontsize',22)
ylabel('E(\omega)','fontsize',22)

 xlim([0 15])
 ylim([0 1.2])


% end

function [aFreq,P1]=myfft_trans(t_mod,Q_mod)
%
dt=(max(t_mod)-min(t_mod))/(length(t_mod)-1);

Fs=1/dt;
U=Q_mod;
L=length(U); % Number of samples
t=(0:L-1)/(Fs); % Time vector
%
U=U-mean(U);
U = detrend(U,'constant');
% Perform FFT analysis on the U-velocity signal and plot Amplitude spectrum
aFData=fft(U); % Take FFT of U signal
P2=abs(aFData/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);

n=L/2; % FFT will yield half the number of unique points
aFreq=Fs*(0:n)/(2*n); % Frequency array (half the length of signal)

end