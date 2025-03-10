close all;
clear all;
% load('M_t11_all_1_1500.mat');
% load('M_t11_all_1_4000.mat');
 load('M_t11_all_3000_4000.mat');
% load('M_t11_all_1_4000_Re100.mat');
% x=linspace(0,14,360);

h=0.4;
x=x/h;

%% -------------------------------
%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
 figure3= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'Ca_fix');  
 axes3  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure3,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes3,'on');
 hold(axes3,'all');
 
 Position = [0 0.0 700 550];
 set(figure3,'Position',Position);

 % drag_1S=smooth(drag_1S);
 plot(x,M_4A,'Color',[0.7,0.3,1],'LineStyle','-','linewidth',4,'DisplayName','$St=1$'); hold on
 plot(x,M_4B,'Color',[0,0.5,0],'LineStyle','-','linewidth',4,'DisplayName','$St=2$'); hold on
 plot(x,M_4C,'Color',[0,0,1],'LineStyle','-','linewidth',4,'DisplayName','$St=4$'); hold on
 plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',4,'DisplayName','$St=8$'); hold on
 plot(x,M_4E,'Color',[1,0,1],'LineStyle','-','linewidth',4,'DisplayName','$St=16$'); hold on
 plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',4,'DisplayName','$St=32$'); hold on
 plot(x,M_4S,'Color',[1,0,0],'LineStyle','-','linewidth',4,'DisplayName','$Steady$'); hold on


%   plot(x,M_4A,'Color',[1,0,0],'LineStyle','--','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle','--','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle','--','linewidth',2.5,'DisplayName','$St=4$'); hold on
% plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle','--','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle','--','linewidth',2.5,'DisplayName','$St=16$'); hold on
%   plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle','--','linewidth',2.5,'DisplayName','$St=32$'); hold on
%     plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle','--','linewidth',2.5,'DisplayName','$Steady$'); hold on
 
 
  ylim([0 1])
  xlim([0 8])
%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2.5,'DisplayName','$St_f=16$'); hold on


xlabel('$x/h$','interpreter','latex','fontsize',28)
ylabel('$MI$','interpreter','latex','fontsize',28)

% Create legend
legend1 = legend(axes3,'show');
% set(legend1,'Position',[0.145238095929935 0.61388889868108 0.114285713593874 0.344047609255428],'Interpreter','latex');
set(legend1,'Units','points',...
    'Position',[114.132271778016 341.25 362.750946283312 55.0000014305114],...
    'NumColumns',3,...
    'Interpreter','latex',...
    'FontSize',18);

% Create rectangle
annotation(figure3,'rectangle',...
    [0.387894701542589 0.172727272727273 0.0294966028052367 0.276363636363637],...
    'Color','none',...
    'FaceColor',[0.149019607843137 0.149019607843137 0.149019607843137],...
    'FaceAlpha',0.4);


%%
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

 
annotation(figure4,'rectangle',...
    [0.387894701542589 0.172727272727273 0.0294966028052367 0.276363636363637],...
    'Color','none',...
    'FaceColor',[0.149019607843137 0.149019607843137 0.149019607843137],...
    'FaceAlpha',0.4);
 
 % drag_1S=smooth(drag_1S);
 plot(x,M_1S,'Color',[1,0,0],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca=rigid$'); hold on
 plot(x,M_2S,'Color',[0,0.5,0],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca=0.001$'); hold on
 plot(x,M_3S,'Color',[0,0,1],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca=0.01$'); hold on
 plot(x,M_4S,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca=0.02$'); hold on
 plot(x,M_5S,'Color',[1,0,1],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca =0.04$'); hold on
 plot(x,M_6S,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca =0.06$'); hold on

 
%  plot(x,M_4A,'Color',[1,0,0],'LineStyle','-','linewidth',2.5,'DisplayName','$St_f=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle','-','linewidth',2.5,'DisplayName','$St_f=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle','-','linewidth',2.5,'DisplayName','$St_f=4$'); hold on
%  plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',2.5,'DisplayName','$St_f=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle','-','linewidth',2.5,'DisplayName','$St_f=16$'); hold on
%  plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',2.5,'DisplayName','$St_f=32$'); hold on
%  plot(x,M_4S,'Color',[1,0.5,0.5],'LineStyle','-','linewidth',2.5,'DisplayName','$Steady$'); hold on
%  plot(x,M_1A,,'Color',[1,0.5,0.5],'LineStyle','-','linewidth',2.5,'DisplayName','$Ca =0.06$'); hold on


  ylim([0 1])
  xlim([0 8])
%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2.5,'DisplayName','$St_f=16$'); hold on


xlabel('$x/h$','interpreter','latex','fontsize',28)
ylabel('$MI$','interpreter','latex','fontsize',28)

% Create legend
legend4 = legend(axes4,'show');
set(legend4,'Units','points',...
    'Position',[122.382271778016 341.25 362.750946283312 55.0000014305114],...
    'NumColumns',3,...
    'Interpreter','latex',...
    'FontSize',18);