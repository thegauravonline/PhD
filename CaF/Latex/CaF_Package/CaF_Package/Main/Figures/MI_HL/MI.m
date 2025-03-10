  close all;
  clear all;

 % load('M_t22_4500_5000.mat');
 load('M_t22_N_4000_5000.mat');

% x=linspace(0,14,360);

h=0.4;
  % x=x/h;
  %  x_ico=x_ico/h;
  % x_NFS=x_NFS/h;

%% ------------------------------
%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
 figure3= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'Ca_fix');  
 axes3  = axes('fontsize',36,'LineWidth',1.5,'Parent',figure3,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex','XTick',[0 4 8 12],'YTick',...
    [0 0.2 0.4 0.6 0.8 1]); % adjust by hand
 box(axes3,'on');
 hold(axes3,'all');

 Position = [0 0.0 900 750];
 set(figure3,'Position',Position);

 % plot(x_1./h,M_1a,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=200$'); hold on
 % plot(x_1./h,M_1b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$Re=400$'); hold on
 % plot(x_1./h,M_1c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=800$'); hold on
 % plot(x_1./h,M_1d,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$Re=1600$'); hold on
 % plot(x_1./h,M_1e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=3200$'); hold on

 % plot(x_2./h,M_2a,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=200$'); hold on
 % plot(x_2./h,M_2b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$Re=400$'); hold on
 % plot(x_2./h,M_2c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=800$'); hold on
 % plot(x_2./h,M_2d,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$Re=1600$'); hold on
 % plot(x_2./h,M_2e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=3200$'); hold on
 % 
 % plot(x_3./h,M_3a,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=200$'); hold on
 % plot(x_3./h,M_3b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$Re=400$'); hold on
 % plot(x_3./h,M_3c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=800$'); hold on
 % plot(x_3./h,M_3d,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$Re=1600$'); hold on
 % plot(x_3./h,M_3e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=3200$'); hold on
 % 
 % plot(x_4./h,M_4a,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=200$'); hold on
 % plot(x_4./h,M_4b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$Re=400$'); hold on
 % plot(x_4./h,M_4c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=800$'); hold on
 % plot(x_4./h,M_4d,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$Re=1600$'); hold on
 % plot(x_4./h,M_4e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=3200$'); hold on
 % 
 plot(x_Single./h,M_Single_a,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=200$'); hold on
 plot(x_Single./h,M_Single_b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$Re=400$'); hold on
 plot(x_Single./h,M_Single_c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=800$'); hold on
 plot(x_Single./h,M_Single_d,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$Re=1600$'); hold on
 plot(x_Single./h,M_Single_e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=3200$'); hold on

 plot(x_N./h,M_Na,'Color',[0.7,0.3,1],'LineStyle','--','linewidth',3); hold on
 plot(x_N./h,M_Nb,'Color',[0,0.5,0],'LineStyle','--','linewidth',3); hold on
 plot(x_N./h,M_Nc,'Color',[0,0,1],'LineStyle','--','linewidth',3); hold on
 plot(x_N./h,M_Nd,'Color',[0.7,0.3,0.2],'LineStyle','--','linewidth',3); hold on
 plot(x_N./h,M_Ne,'Color',[1,0,1],'LineStyle','--','linewidth',3); hold on

 % plot(x_0./h,M_0a,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=200$'); hold on
 % plot(x_0./h,M_0b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$Re=400$'); hold on
 % plot(x_0./h,M_0c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=800$'); hold on
 % plot(x_0./h,M_0d,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$Re=1600$'); hold on
 % plot(x_0./h,M_0e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Re=3200$'); hold on


 % plot(x_Single./h,M_Single_b,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Single$'); hold on
 % plot(x_4./h,M_4b,'Color',[0.2,0.1,0.4],'LineStyle','-','linewidth',5,'DisplayName','$d/h=2.0$'); hold on
 % plot(x_3./h,M_3b,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.5$'); hold on
 % plot(x_2./h,M_2b,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.0$'); hold on
 % plot(x_1./h,M_1b,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.5$'); hold on
 % plot(x_0./h,M_0b,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.0$'); hold on

 % plot(x_Single./h,M_Single_e,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Single$'); hold on
 % plot(x_4./h,M_4e,'Color',[0.2,0.1,0.4],'LineStyle','-','linewidth',5,'DisplayName','$d/h=2.0$'); hold on
 % plot(x_3./h,M_3e,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.5$'); hold on
 % plot(x_2./h,M_2e,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.0$'); hold on
 % plot(x_1./h,M_1e,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.5$'); hold on
 % plot(x_0./h,M_0e,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.0$'); hold on


 % plot(x_Single./h,M_Single_c,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$Single$'); hold on
 % plot(x_4./h,M_4c,'Color',[0.2,0.1,0.4],'LineStyle','-','linewidth',5,'DisplayName','$d/h=2.0$'); hold on
 % plot(x_3./h,M_3c,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.5$'); hold on
 % plot(x_2./h,M_2c,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.0$'); hold on
 % plot(x_1./h,M_1c,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.5$'); hold on
 % plot(x_0./h,M_0c,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.0$'); hold on
 % plot(x_N./h,M_Nc,'Color',[0,0,0],'LineStyle','--','linewidth',5,'DisplayName','$empty$'); hold on



  ylim([0 1.1])
  xlim([0 12])

xlabel('$x/h$','interpreter','latex','fontsize',42);
ylabel('$MI$','interpreter','latex','fontsize',42);

% Create legend
legend1 = legend(axes3,'show');
set(legend1,'Units','points',...
    'Position',[110.365399374819 423.522651248791 176.756876627604 185.333333333333],...
    'Interpreter','latex',...
    'FontSize',30);

% Create rectangle
annotation(figure3,'rectangle',...
    [0.261630965278853 0.155029650475142 0.0206767270288395 0.276363636363637],...
    'Color','none',...
    'FaceColor',[0.149019607843137 0.149019607843137 0.149019607843137],...
    'FaceAlpha',0.4);

% Create textbox
annotation(figure3,'textbox',...
    [0.708606837606837 0.169600717810677 0.171222222222222 0.052],'String',{'$d/h=0.5$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',36,...
    'FitBoxToText','off');