 close all;
clear all;
load('CoP_MI+HL_12h.mat');
load('M_t22_N4000_5000.mat');
load('HL_N_4000_5000.mat');

  x1=289; x2=299; x3=279; x4=274; x0=349; xS=274;  %12h

  % x1=163; x2=174; x3=154; x4=149; x0=248; xS=150;  %6h
  % 
  % x1=137; x2=149; x3=128; x4=123; x0=218; xS=124;  %5h

  % x1=257; x2=267; x3=264; x4=259; x0=330; xS=242; %10h

H_1=[HL_1a(x1),HL_1b(x1),HL_1c(x1),HL_1d(x1),HL_1e(x1)];
MI_1=[M_1a(x1),M_1b(x1),M_1c(x1),M_1d(x1),M_1e(x1)];

H_2=[HL_2a(x2),HL_2b(x2),HL_2c(x2),HL_2d(x2),HL_2e(x2)];
MI_2=[M_2a(x2),M_2b(x2),M_2c(x2),M_2d(x2),M_2e(x2)];

H_3=[HL_3a(x3),HL_3b(x3),HL_3c(x3),HL_3d(x3),HL_3e(x3)];
MI_3=[M_3a(x3),M_3b(x3),M_3c(x3),M_3d(x3),M_3e(x3)];

H_4=[HL_4a(x4),HL_4b(x4),HL_4c(x4),HL_4d(x4),HL_4e(x4)];
MI_4=[M_4a(x4),M_4b(x4),M_4c(x4),M_4d(x4),M_4e(x4)];

H_0=[HL_0a(x0),HL_0b(x0),HL_0c(x0),HL_0d(x0),HL_0e(x0)];
MI_0=[M_0a(x0),M_0b(x0),M_0c(x0),M_0d(x0),M_0e(x0)];

H_S=[HL_Single_a(xS),HL_Single_b(xS),HL_Single_c(xS),HL_Single_d(xS),HL_Single_e(xS)];
MI_S=[M_Single_a(xS),M_Single_b(xS),M_Single_c(xS),M_Single_d(xS),M_Single_e(xS)];

% H_N=[HL_Na(x_N),HL_Nb(x_N),HL_Nc(x_N),HL_Nd(x_N),HL_Ne(x_N)];
% MI_N=[M_Na(x_N),M_Nb(x_N),M_Nc(x_N),M_Nd(x_N),M_Ne(x_N)];

%%
H_a=[HL_0a(x0),HL_1a(x1),HL_2a(x2),HL_3a(x3),HL_4a(x4),HL_Single_a(xS)];
MI_a=[M_0a(x0),M_1a(x1),M_2a(x2),M_3a(x3),M_4a(x4),M_Single_a(xS)];

H_b=[HL_0b(x0),HL_1b(x1),HL_2b(x2),HL_3b(x3),HL_4b(x4),HL_Single_b(xS)];
MI_b=[M_0b(x0),M_1b(x1),M_2b(x2),M_3b(x3),M_4b(x4),M_Single_b(xS)];

H_c=[HL_0c(x0),HL_1c(x1),HL_2c(x2),HL_3c(x3),HL_4c(x4),HL_Single_c(xS)];
MI_c=[M_0c(x0),M_1c(x1),M_2c(x2),M_3c(x3),M_4c(x4),M_Single_c(xS)];

H_d=[HL_0d(x0),HL_1d(x1),HL_2d(x2),HL_3d(x3),HL_4d(x4),HL_Single_d(xS)];
MI_d=[M_0d(x0),M_1d(x1),M_2d(x2),M_3d(x3),M_4d(x4),M_Single_d(xS)];

H_e=[HL_0e(x0),HL_1e(x1),HL_2e(x2),HL_3e(x3),HL_4e(x4),HL_Single_e(xS)];
MI_e=[M_0e(x0),M_1e(x1),M_2e(x2),M_3e(x3),M_4e(x4),M_Single_e(xS)];

dydxM_Na=(M_Na(200)-M_Na(1))./(x_N(200)-x_N(1));
dydxM_Nb=(M_Nb(200)-M_Nb(1))./(x_N(200)-x_N(1));
dydxM_Nc=(M_Nc(200)-M_Nc(1))./(x_N(200)-x_N(1));
dydxM_Nd=(M_Nd(200)-M_Nd(1))./(x_N(200)-x_N(1));
dydxM_Ne=(M_Ne(200)-M_Ne(1))./(x_N(200)-x_N(1));

dydxH_Na=(HL_Na(200)-HL_Na(1))./(x_N(200)-x_N(1));
dydxH_Nb=(HL_Nb(200)-HL_Nb(1))./(x_N(200)-x_N(1));
dydxH_Nc=(HL_Nc(200)-HL_Nc(1))./(x_N(200)-x_N(1));
dydxH_Nd=(HL_Nd(200)-HL_Nd(1))./(x_N(200)-x_N(1));
dydxH_Ne=(HL_Ne(200)-HL_Ne(1))./(x_N(200)-x_N(1));

% the mixing index and head loss in the empty channel with steady inlet flow (i.e., with no plate) ...
% can be very accurately fit as a linear profile, i.e., $MI = 0.015x/h$ and $HL(x)=0.0032x/h$;

dydxM_N=[dydxM_Na,dydxM_Nb,dydxM_Nc,dydxM_Nd,dydxM_Ne];
dydxH_N=[dydxH_Na,dydxH_Nb,dydxH_Nc,dydxH_Nd,dydxH_Ne];

Em_a= MI_a/dydxM_Na; Em_b= MI_b/dydxM_Nb; Em_c= MI_c/dydxM_Nc; Em_d= MI_d/dydxM_Nd; Em_e= MI_e/dydxM_Ne;
Em_1= MI_1./dydxM_N; Em_2= MI_2./dydxM_N; Em_3= MI_3./dydxM_N; Em_4= MI_4./dydxM_N; Em_0= MI_0./dydxM_N; Em_S= MI_S./dydxM_N;

Eh_a= H_a/dydxH_Na; Eh_b= H_b/dydxH_Nb; Eh_c= H_c/dydxH_Nc; Eh_d= H_d/dydxH_Nd; Eh_e= H_e/dydxH_Ne;
 Eh_1= H_1./dydxH_N; Eh_2= H_2./dydxH_N; Eh_3= H_3./dydxH_N; Eh_4= H_4./dydxH_N; Eh_0= H_0./dydxH_N; Eh_S= H_S./dydxH_N;

CoP_1=Em_1./Eh_1; CoP_2=Em_2./Eh_2; CoP_3=Em_3./Eh_3; CoP_4=Em_4./Eh_4; CoP_0=Em_0./Eh_0; CoP_S=Em_S./Eh_S;
CoP_a=Em_a./Eh_a; CoP_b=Em_b./Eh_b; CoP_c=Em_c./Eh_c; CoP_d=Em_d./Eh_d; CoP_e=Em_e./Eh_e;


Re=[200; 400; 800; 1600;];
dh=[0; 0.5; 1; 1.5; 2; 2.9];




%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
 figure4= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'Steady');  
 axes4  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure4,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes4,'on');
 hold(axes4,'all');
 
  Position = [0 0.0 700 550];
 set(figure4,'Position',Position);

 
% annotation(figure4,'rectangle',...
%     [0.387894701542589 0.172727272727273 0.0294966028052367 0.276363636363637],...
%     'Color','none',...
%     'FaceColor',[0.149019607843137 0.149019607843137 0.149019607843137],...
%     'FaceAlpha',0.4);
 



 plot(dh,CoP_a,'Color',[0.7,0.3,0.1],'MarkerFaceColor',[0.7,0.3,0.1],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','square','DisplayName','$Re=200$'); hold on
 plot(dh,CoP_b,'Color',[0,0.5,0],'MarkerFaceColor',[0,0.5,0],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','o','DisplayName','$Re=400$'); hold on
 plot(dh,CoP_c,'Color',[0,0,1],'MarkerFaceColor',[0,0,1],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','diamond','DisplayName','$Re=800$'); hold on
 plot(dh,CoP_d,'Color',[1,0,0],'MarkerFaceColor',[1,0,0],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','^','DisplayName','$Re=1600$'); hold on
 
 
 
 % plot(dh,CoP_e,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','^','DisplayName','$Re=3200$'); hold on
 % plot(Ca,CoP_F,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','pentagram','DisplayName','$St_f=32$'); hold on
 % plot(Ca,CoP_S,'Color',[1,0,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','>','DisplayName','$steady$'); hold on



   % ylim([0 1])
   % xlim([-0.0025 0.0625])
%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',4,'DisplayName','$St_f=16$'); hold on

% Create legend
legend4 = legend(axes4,'show');
set(legend4,'Units','points',...
    'NumColumns',1,...
    'Interpreter','latex','Location','northwest',...
    'FontSize',28);

xlabel('$d/h$','interpreter','latex','fontsize',32)
ylabel('$CoP=E_M/E_H$','interpreter','latex','fontsize',32)


%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
 figure5= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'Steady');  
 axes5  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure5,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes5,'on');
 hold(axes5,'all');
 
  Position = [0 0.0 700 550];
 set(figure4,'Position',Position);

 
% annotation(figure4,'rectangle',...
%     [0.387894701542589 0.172727272727273 0.0294966028052367 0.276363636363637],...
%     'Color','none',...
%     'FaceColor',[0.149019607843137 0.149019607843137 0.149019607843137],...
%     'FaceAlpha',0.4);
 

 plot(Re,CoP_0(1:4),'Color',[1,0,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','square','DisplayName','$d/h=0$'); hold on
 plot(Re,CoP_1(1:4),'Color',[0,0.5,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','o','DisplayName','$d/h=0.5$'); hold on
 plot(Re,CoP_2(1:4),'Color',[0,0,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','>','DisplayName','$d/h=1$'); hold on
 plot(Re,CoP_3(1:4),'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','diamond','DisplayName','$d/h=1.5$'); hold on
 plot(Re,CoP_4(1:4),'Color',[1,0,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','^','DisplayName','$d/h=2$'); hold on
 plot(Re,CoP_S(1:4),'Color',[0.3,0.7,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','*','DisplayName','$single$'); hold on


 % plot(dh,CoP_a,'Color',[0.7,0.3,0.1],'MarkerFaceColor',[0.7,0.3,0.1],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','square','DisplayName','$Re=200$'); hold on
 % plot(dh,CoP_b,'Color',[0,0.5,0],'MarkerFaceColor',[0,0.5,0],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','o','DisplayName','$Re=400$'); hold on
 % plot(dh,CoP_c,'Color',[0,0,1],'MarkerFaceColor',[0,0,1],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','diamond','DisplayName','$Re=800$'); hold on
 % plot(dh,CoP_d,'Color',[1,0,0],'MarkerFaceColor',[1,0,0],'MarkerEdgeColor',[0 0 0],'LineStyle','--','linewidth',3,'MarkerSize',16,'Marker','^','DisplayName','$Re=1600$'); hold on
 
 
 
 % plot(dh,CoP_e,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','^','DisplayName','$Re=3200$'); hold on
 % plot(Ca,CoP_F,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','pentagram','DisplayName','$St_f=32$'); hold on
 % plot(Ca,CoP_S,'Color',[1,0,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','>','DisplayName','$steady$'); hold on



   % ylim([0 1])
   % xlim([-0.0025 0.0625])
%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',4,'DisplayName','$St_f=16$'); hold on

% Create legend
legend5 = legend(axes5,'show');
set(legend5,'Units','points',...
    'NumColumns',1,...
    'Interpreter','latex','Location','northwest',...
    'FontSize',28);

xlabel('$d/h$','interpreter','latex','fontsize',32)
ylabel('$CoP=E_M/E_H$','interpreter','latex','fontsize',32)



return;
