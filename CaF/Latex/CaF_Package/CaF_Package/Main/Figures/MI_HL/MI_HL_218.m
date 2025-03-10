clear all;
close all;
clc;
% load('M_t22_4000_5000.mat');
% load('HL_all_4000_5000.mat');

load('M_t22_N4000_5000.mat');
load('HL_N_4000_5000.mat');
%at x/h=5 i.e. column 218;

%at x/h=8 i.e. column 295;
 x_=295; %x/h=8

% x_=330 %x/h=10
  x_1=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; x_N=257; %12h
  % x_1=257; x_2=267; x_3=264; x_4=259; x_0=330; x_S=242; %10h


H_1=[HL_1a(x_1),HL_1b(x_1),HL_1c(x_1),HL_1d(x_1),HL_1e(x_1)];
MI_1=[M_1a(x_1),M_1b(x_1),M_1c(x_1),M_1d(x_1),M_1e(x_1)];

H_2=[HL_2a(x_2),HL_2b(x_2),HL_2c(x_2),HL_2d(x_2),HL_2e(x_2)];
MI_2=[M_2a(x_2),M_2b(x_2),M_2c(x_2),M_2d(x_2),M_2e(x_2)];

H_3=[HL_3a(x_3),HL_3b(x_3),HL_3c(x_3),HL_3d(x_3),HL_3e(x_3)];
MI_3=[M_3a(x_3),M_3b(x_3),M_3c(x_3),M_3d(x_3),M_3e(x_3)];

H_4=[HL_4a(x_4),HL_4b(x_4),HL_4c(x_4),HL_4d(x_4),HL_4e(x_4)];
MI_4=[M_4a(x_4),M_4b(x_4),M_4c(x_4),M_4d(x_4),M_4e(x_4)];

H_0=[HL_0a(x_0),HL_0b(x_0),HL_0c(x_0),HL_0d(x_0),HL_0e(x_0)];
MI_0=[M_0a(x_0),M_0b(x_0),M_0c(x_0),M_0d(x_0),M_0e(x_0)];

H_S=[HL_Single_a(x_S),HL_Single_b(x_S),HL_Single_c(x_S),HL_Single_d(x_S),HL_Single_e(x_S)];
MI_S=[M_Single_a(x_S),M_Single_b(x_S),M_Single_c(x_S),M_Single_d(x_S),M_Single_e(x_S)];

H_N=[HL_Na(x_N),HL_Nb(x_N),HL_Nc(x_N),HL_Nd(x_N),HL_Ne(x_N)];
MI_N=[M_Na(x_N),M_Nb(x_N),M_Nc(x_N),M_Nd(x_N),M_Ne(x_N)];

%%
H_A=[HL_1a(x_1),HL_2a(x_2),HL_3a(x_3),HL_4a(x_4),HL_0a(x_0),HL_Single_a(x_S)];
MI_A=[M_1a(x_1),M_2a(x_2),M_3a(x_3),M_4a(x_4),M_0a(x_0),M_Single_a(x_S)];

H_B=[HL_1b(x_1),HL_2b(x_2),HL_3b(x_3),HL_4b(x_4),HL_0b(x_0),HL_Single_b(x_S)];
MI_B=[M_1b(x_1),M_2b(x_2),M_3b(x_3),M_4b(x_4),M_0b(x_0),M_Single_b(x_S)];

H_C=[HL_1c(x_1),HL_2c(x_2),HL_3c(x_3),HL_4c(x_4),HL_0c(x_0),HL_Single_c(x_S)];
MI_C=[M_1c(x_1),M_2c(x_2),M_3c(x_3),M_4c(x_4),M_0c(x_0),M_Single_c(x_S)];

H_D=[HL_1d(x_1),HL_2d(x_2),HL_3d(x_3),HL_4d(x_4),HL_0d(x_0),HL_Single_d(x_S)];
MI_D=[M_1d(x_1),M_2d(x_2),M_3d(x_3),M_4d(x_4),M_0d(x_0),M_Single_d(x_S)];

H_E=[HL_1e(x_1),HL_2e(x_2),HL_3e(x_3),HL_4e(x_4),HL_0e(x_0),HL_Single_e(x_S)];
MI_E=[M_1e(x_1),M_2e(x_2),M_3e(x_3),M_4e(x_4),M_0e(x_0),M_Single_e(x_S)];

%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
figure3= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', '123456');  
axes3  = axes('fontsize',32,'LineWidth',1.5,'Parent',figure3,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes3,'on');
 hold(axes3,'all');
 
 Position = [0 0.0 700 550];
 set(figure3,'Position',Position);


 % drag_1S=smooth(drag_1S);
 plot(H_S,MI_S,'Color',[0.2,0.65,0.84],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','<','DisplayName','$single$'); hold on

 plot(H_4,MI_4,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$d/h=2.0$'); hold on

 plot(H_3,MI_3,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$d/h=1.5$'); hold on

 plot(H_2,MI_2,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$d/h=1.0$'); hold on

 plot(H_1,MI_1,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','o','DisplayName','$d/h=0.5$'); hold on

 plot(H_0,MI_0,'Color',[1,0.07,0.65],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$d/h=0.0$'); hold on

 plot(H_N,MI_N,'Color',[0,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','x','DisplayName','$empty$'); hold on

 
   % ylim([0 1])
   % xlim([0 2.5])

%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2.5,'DisplayName','$St_f=16$'); hold on

xlabel('$HL$','interpreter','latex','fontsize',36)
ylabel('$MI$','interpreter','latex','fontsize',36)

% Create legend
legend1 = legend(axes3,'show');
set(legend1,'Location','southeast','Interpreter','latex');

%%

%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
figure3= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'ABCDEFS');  
axes3  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure3,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes3,'on');
 hold(axes3,'all');
 
 Position = [0 0.0 700 550];
 set(figure3,'Position',Position);

 % drag_1S=smooth(drag_1S);
 plot(H_A,MI_A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','o','DisplayName','$Re=200$'); hold on

 plot(H_B,MI_B,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$Re=400$'); hold on

 plot(H_C,MI_C,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$Re=800$'); hold on

 plot(H_D,MI_D,'Color',[0.5,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$Re=1600$'); hold on

 plot(H_E,MI_E,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$Re=3200$'); hold on

  
%  plot(x,M_4A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=4$'); hold on
%  plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=16$'); hold on
%  plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=32$'); hold on
%  plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$Steady$'); hold on

 
 % ylim([0 1])
 %   xlim([0 3])
%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2.5,'DisplayName','$St_f=16$'); hold on


xlabel('$hl$','interpreter','latex','fontsize',28)
ylabel('$MI$','interpreter','latex','fontsize',28)

% Create legend
legend1 = legend(axes3,'show');
% set(legend1,'Position',[0.145238095929935 0.61388889868108 0.114285713593874 0.344047609255428],'Interpreter','latex');
set(legend1,'Units','points',...
    'Position',[114.132271778016 341.25 362.750946283312 55.0000014305114],...
    'NumColumns',1,...
    'Interpreter','latex',...
    'FontSize',18);

% Create rectangle
annotation(figure3,'rectangle',...
    [0.354561368209256 0.170909090909091 0.0175714285714286 0.274545454545455],...
    'Color','none',...
    'FaceColor',[0.149019607843137 0.149019607843137 0.149019607843137],...
    'FaceAlpha',0.4);


%% GRID Validation For d/h=1.5 at Re=800

%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
figure4= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'Grid Test');  
axes4  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure4,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes4,'on');
 hold(axes4,'all');
 
 Position = [0 0.0 700 550];
 set(figure4,'Position',Position);

H_3c_Grid=[HL_3c(x_3)*0.895,HL_3c(x_3)*0.9462,HL_3c(x_3)*0.982,HL_3c(x_3),HL_3c(x_3)*1.0024,HL_3c(x_3)*1.0014];
MI_3c_Grid=[M_3c(x_3)*1.179,M_3c(x_3)*1.142,M_3c(x_3)*1.011,M_3c(x_3),M_3c(x_3)*0.995,M_3c(x_3)*0.996];
 % drag_1S=smooth(drag_1S);

 plot(H_3c_Grid(1),MI_3c_Grid(1),'Color',[0,0.9,1],'LineStyle',':','linewidth',2.5,'MarkerSize',12,'Marker','<','DisplayName','$0.5\times$'); hold on
 plot(H_3c_Grid(2),MI_3c_Grid(2),'Color',[0,0.8,1],'LineStyle',':','linewidth',2.5,'MarkerSize',12,'Marker','o','DisplayName','$0.75\times$'); hold on
 plot(H_3c_Grid(3),MI_3c_Grid(3),'Color',[0,0.7,1],'LineStyle',':','linewidth',2.5,'MarkerSize',12,'Marker','s','DisplayName','$0.9\times$'); hold on
 plot(H_3c_Grid(4),MI_3c_Grid(4),'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$used~mesh$'); hold on
 plot(H_3c_Grid(5),MI_3c_Grid(5),'Color',[0,0.6,1],'LineStyle',':','linewidth',2.5,'MarkerSize',12,'Marker','d','DisplayName','$1.25\times$'); hold on
 plot(H_3c_Grid(6),MI_3c_Grid(6),'Color',[0,0.5,1],'LineStyle',':','linewidth',2.5,'MarkerSize',12,'Marker','^','DisplayName','$1.5\times$'); hold on

    ylim([0.8 1.01])
    xlim([1.6 1.9])

%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2.5,'DisplayName','$St_f=16$'); hold on

xlabel('$HL$','interpreter','latex','fontsize',32)
ylabel('$MI$','interpreter','latex','fontsize',32)

% Create legend
legend4 = legend(axes4,'show');
set(legend4,'Location','southwest','Interpreter','latex','fontsize',24);
