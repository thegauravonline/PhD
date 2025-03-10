clear all;
close all;
load('M_t11_all_3000_4000.mat');
load('HL_all_1500_4000.mat');
%at x/h=5 i.e. column 218;

%at x/h=8 i.e. column 295;
 xxx=295; %x/h=8

% xxx=330 %x/h=10



H_1=[HL_1A(xxx),HL_1B(xxx),HL_1C(xxx),HL_1D(xxx),HL_1E(xxx),HL_1F(xxx),HL_1S(xxx)];
MI_1=[M_1A(xxx),M_1B(xxx),M_1C(xxx),M_1D(xxx),M_1E(xxx),M_1F(xxx),M_1S(xxx)];

H_2=[HL_2A(xxx),HL_2B(xxx),HL_2C(xxx),HL_2D(xxx),HL_2E(xxx),HL_2F(xxx),HL_2S(xxx)];
MI_2=[M_2A(xxx),M_2B(xxx),M_2C(xxx),M_2D(xxx),M_2E(xxx),M_2F(xxx),M_2S(xxx)];

H_3=[HL_3A(xxx),HL_3B(xxx),HL_3C(xxx),HL_3D(xxx),HL_3E(xxx),HL_3F(xxx),HL_3S(xxx)];
MI_3=[M_3A(xxx),M_3B(xxx),M_3C(xxx),M_3D(xxx),M_3E(xxx),M_3F(xxx),M_3S(xxx)];

H_4=[HL_4A(xxx),HL_4B(xxx),HL_4C(xxx),HL_4D(xxx),HL_4E(xxx),HL_4F(xxx),HL_4S(xxx)];
MI_4=[M_4A(xxx),M_4B(xxx),M_4C(xxx),M_4D(xxx),M_4E(xxx),M_4F(xxx),M_4S(xxx)];

H_5=[HL_5A(xxx),HL_5B(xxx),HL_5C(xxx),HL_5D(xxx),HL_5E(xxx),HL_5F(xxx),HL_5S(xxx)];
MI_5=[M_5A(xxx),M_5B(xxx),M_5C(xxx),M_5D(xxx),M_5E(xxx),M_5F(xxx),M_5S(xxx)];

H_6=[HL_6A(xxx),HL_6B(xxx),HL_6C(xxx),HL_6D(xxx),HL_6E(xxx),HL_6F(xxx),HL_6S(xxx)];
MI_6=[M_6A(xxx),M_6B(xxx),M_6C(xxx),M_6D(xxx),M_6E(xxx),M_6F(xxx),M_6S(xxx)];


%%
H_A=[HL_1A(xxx),HL_2A(xxx),HL_3A(xxx),HL_4A(xxx),HL_5A(xxx),HL_6A(xxx)];
MI_A=[M_1A(xxx),M_2A(xxx),M_3A(xxx),M_4A(xxx),M_5A(xxx),M_6A(xxx)];

H_B=[HL_1B(xxx),HL_2B(xxx),HL_3B(xxx),HL_4B(xxx),HL_5B(xxx),HL_6B(xxx)];
MI_B=[M_1B(xxx),M_2B(xxx),M_3B(xxx),M_4B(xxx),M_5B(xxx),M_6B(xxx)];

H_C=[HL_1C(xxx),HL_2C(xxx),HL_3C(xxx),HL_4C(xxx),HL_5C(xxx),HL_6C(xxx)];
MI_C=[M_1C(xxx),M_2C(xxx),M_3C(xxx),M_4C(xxx),M_5C(xxx),M_6C(xxx)];

H_D=[HL_1D(xxx),HL_2D(xxx),HL_3D(xxx),HL_4D(xxx),HL_5D(xxx),HL_6D(xxx)];
MI_D=[M_1D(xxx),M_2D(xxx),M_3D(xxx),M_4D(xxx),M_5D(xxx),M_6D(xxx)];

H_E=[HL_1E(xxx),HL_2E(xxx),HL_3E(xxx),HL_4E(xxx),HL_5E(xxx),HL_6E(xxx)];
MI_E=[M_1E(xxx),M_2E(xxx),M_3E(xxx),M_4E(xxx),M_5E(xxx),M_6E(xxx)];

H_F=[HL_1F(xxx),HL_2F(xxx),HL_3F(xxx),HL_4F(xxx),HL_5F(xxx),HL_6F(xxx)];
MI_F=[M_1F(xxx),M_2F(xxx),M_3F(xxx),M_4F(xxx),M_5F(xxx),M_6F(xxx)];

H_S=[HL_1S(xxx),HL_2S(xxx),HL_3S(xxx),HL_4S(xxx),HL_5S(xxx),HL_6S(xxx)];
MI_S=[M_1S(xxx),M_2S(xxx),M_3S(xxx),M_4S(xxx),M_5S(xxx),M_6S(xxx)];


%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
figure3= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', '123456');  
axes3  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure3,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex',...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
 box(axes3,'on');
 hold(axes3,'all');
 
 Position = [0 0.0 700 550];
 set(figure3,'Position',Position);


 % drag_1S=smooth(drag_1S);
 plot(H_1,MI_1,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','o','DisplayName','$rigid$'); hold on

 plot(H_2,MI_2,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$Ca=0.001$'); hold on

 plot(H_3,MI_3,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$Ca=0.01$'); hold on

 plot(H_4,MI_4,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$Ca=0.02$'); hold on

 plot(H_5,MI_5,'Color',[1,0.07,0.65],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$Ca=0.04$'); hold on

 plot(H_6,MI_6,'Color',[0.2,0.65,0.84],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','<','DisplayName','$Ca=0.06$'); hold on

  


%   plot(x,M_4A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=4$'); hold on
% plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=16$'); hold on
%   plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=32$'); hold on
%     plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$Steady$'); hold on
 
 
   ylim([.6 1.05])
   xlim([0 2.5])

%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2.5,'DisplayName','$St_f=16$'); hold on

xlabel('$HL$','interpreter','latex','fontsize',28)
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
 plot(H_A,MI_A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','o','DisplayName','$St=1$'); hold on

 plot(H_B,MI_B,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$St=2$'); hold on

 plot(H_C,MI_C,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$St=4$'); hold on

 plot(H_D,MI_D,'Color',[0.5,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$St=8$'); hold on

 plot(H_E,MI_E,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$St=16$'); hold on

 plot(H_F,MI_F,'Color',[1,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','*','DisplayName','$St=32$'); hold on

 plot(H_S,MI_S,'Color',[1,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','>','DisplayName','$St=steady$'); hold on
  
%  plot(x,M_4A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=4$'); hold on
%  plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=16$'); hold on
%  plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=32$'); hold on
%  plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$Steady$'); hold on

 
 ylim([0 1])
   xlim([0 3])
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

