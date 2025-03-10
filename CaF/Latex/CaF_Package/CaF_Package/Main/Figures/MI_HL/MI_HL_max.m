clear all;
close all;

load('M_t22_all_1500_4000.mat');
load('HL_all_1500_4000.mat');
%at x/h=5 i.e. column 218;
 xxx=330; %x/h=8

%  xxx=330 %x/h=10
  x_1=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; %12h
  % x_1=257; x_2=267; x_3=264; x_4=259; x_0=330; x_S=242; %10h



[MI_1A,I_1A]=max(M_1A(1:xxx));	[MI_1B,I_1B]=max(M_1B(1:xxx));	[MI_1C,I_1C]=max(M_1C(1:xxx));	[MI_1D,I_1D]=max(M_1D(1:xxx));	[MI_1E,I_1E]=max(M_1E(1:xxx));	[MI_1F,I_1F]=max(M_1F(1:xxx));	[MI_1S,I_1S]=max(M_1S(1:xxx));
[MI_2A,I_2A]=max(M_2A(1:xxx));	[MI_2B,I_2B]=max(M_2B(1:xxx));	[MI_2C,I_2C]=max(M_2C(1:xxx));	[MI_2D,I_2D]=max(M_2D(1:xxx));	[MI_2E,I_2E]=max(M_2E(1:xxx));	[MI_2F,I_2F]=max(M_2F(1:xxx));	[MI_2S,I_2S]=max(M_2S(1:xxx));
[MI_3A,I_3A]=max(M_3A(1:xxx));	[MI_3B,I_3B]=max(M_3B(1:xxx));	[MI_3C,I_3C]=max(M_3C(1:xxx));	[MI_3D,I_3D]=max(M_3D(1:xxx));	[MI_3E,I_3E]=max(M_3E(1:xxx));	[MI_3F,I_3F]=max(M_3F(1:xxx));	[MI_3S,I_3S]=max(M_3S(1:xxx));
[MI_4A,I_4A]=max(M_4A(1:xxx));	[MI_4B,I_4B]=max(M_4B(1:xxx));	[MI_4C,I_4C]=max(M_4C(1:xxx));	[MI_4D,I_4D]=max(M_4D(1:xxx));	[MI_4E,I_4E]=max(M_4E(1:xxx));	[MI_4F,I_4F]=max(M_4F(1:xxx));	[MI_4S,I_4S]=max(M_4S(1:xxx));
[MI_5A,I_5A]=max(M_5A(1:xxx));	[MI_5B,I_5B]=max(M_5B(1:xxx));	[MI_5C,I_5C]=max(M_5C(1:xxx));	[MI_5D,I_5D]=max(M_5D(1:xxx));	[MI_5E,I_5E]=max(M_5E(1:xxx));	[MI_5F,I_5F]=max(M_5F(1:xxx));	[MI_5S,I_5S]=max(M_5S(1:xxx));
[MI_6A,I_6A]=max(M_6A(1:xxx));	[MI_6B,I_6B]=max(M_6B(1:xxx));	[MI_6C,I_6C]=max(M_6C(1:xxx));	[MI_6D,I_6D]=max(M_6D(1:xxx));	[MI_6E,I_6E]=max(M_6E(1:xxx));	[MI_6F,I_6F]=max(M_6F(1:xxx));	[MI_6S,I_6S]=max(M_6S(1:xxx));


H_1A=HL_1A(I_1A);	H_1B=HL_1B(I_1B);	H_1C=HL_1C(I_1C);	H_1D=HL_1D(I_1D);	H_1E=HL_1E(I_1E);	H_1F=HL_1F(I_1F);	H_1S=HL_1S(I_1S);
H_2A=HL_2A(I_2A);	H_2B=HL_2B(I_2B);	H_2C=HL_2C(I_2C);	H_2D=HL_2D(I_2D);	H_2E=HL_2E(I_2E);	H_2F=HL_2F(I_2F);	H_2S=HL_2S(I_2S);
H_3A=HL_3A(I_3A);	H_3B=HL_3B(I_3B);	H_3C=HL_3C(I_3C);	H_3D=HL_3D(I_3D);	H_3E=HL_3E(I_3E);	H_3F=HL_3F(I_3F);	H_3S=HL_3S(I_3S);
H_4A=HL_4A(I_4A);	H_4B=HL_4B(I_4B);	H_4C=HL_4C(I_4C);	H_4D=HL_4D(I_4D);	H_4E=HL_4E(I_4E);	H_4F=HL_4F(I_4F);	H_4S=HL_4S(I_4S);
H_5A=HL_5A(I_5A);	H_5B=HL_5B(I_5B);	H_5C=HL_5C(I_5C);	H_5D=HL_5D(I_5D);	H_5E=HL_5E(I_5E);	H_5F=HL_5F(I_5F);	H_5S=HL_5S(I_5S);
H_6A=HL_6A(I_6A);	H_6B=HL_6B(I_6B);	H_6C=HL_6C(I_6C);	H_6D=HL_6D(I_6D);	H_6E=HL_6E(I_6E);	H_6F=HL_6F(I_6F);	H_6S=HL_6S(I_6S);



H_1=[H_1A,H_1B,H_1C,H_1D,H_1E,H_1F,H_1S];
MI_1=[MI_1A,MI_1B,MI_1C,MI_1D,MI_1E,MI_1F,MI_1S];

H_2=[H_2A,H_2B,H_2C,H_2D,H_2E,H_2F,H_2S];
MI_2=[MI_2A,MI_2B,MI_2C,MI_2D,MI_2E,MI_2F,MI_2S];

H_3=[H_3A,H_3B,H_3C,H_3D,H_3E,H_3F,H_3S];
MI_3=[MI_3A,MI_3B,MI_3C,MI_3D,MI_3E,MI_3F,MI_3S];

H_4=[H_4A,H_4B,H_4C,H_4D,H_4E,H_4F,H_4S];
MI_4=[MI_4A,MI_4B,MI_4C,MI_4D,MI_4E,MI_4F,MI_4S];

H_5=[H_5A,H_5B,H_5C,H_5D,H_5E,H_5F,H_5S];
MI_5=[MI_5A,MI_5B,MI_5C,MI_5D,MI_5E,MI_5F,MI_5S];

H_6=[H_6A,H_6B,H_6C,H_6D,H_6E,H_6F,H_6S];
MI_6=[MI_6A,MI_6B,MI_6C,MI_6D,MI_6E,MI_6F,MI_6S];


%%
H_A=[H_1A,H_2A,H_3A,H_4A,H_5A,H_6A];
MI_A=[MI_1A,MI_2A,MI_3A,MI_4A,MI_5A,MI_6A];

H_B=[H_1B,H_2B,H_3B,H_4B,H_5B,H_6B];
MI_B=[MI_1B,MI_2B,MI_3B,MI_4B,MI_5B,MI_6B];

H_C=[H_1C,H_2C,H_3C,H_4C,H_5C,H_6C];
MI_C=[MI_1C,MI_2C,MI_3C,MI_4C,MI_5C,MI_6C];

H_D=[H_1D,H_2D,H_3D,H_4D,H_5D,H_6D];
MI_D=[MI_1D,MI_2D,MI_3D,MI_4D,MI_5D,MI_6D];

H_E=[H_1E,H_2E,H_3E,H_4E,H_5E,H_6E];
MI_E=[MI_1E,MI_2E,MI_3E,MI_4E,MI_5E,MI_6E];

H_F=[H_1F,H_2F,H_3F,H_4F,H_5F,H_6F];
MI_F=[MI_1F,MI_2F,MI_3F,MI_4F,MI_5F,MI_6F];

H_S=[H_1S,H_2S,H_3S,H_4S,H_5S,H_6S];
MI_S=[MI_1S,MI_2S,MI_3S,MI_4S,MI_5S,MI_6S];

%%
I_1=[I_1A,I_1B,I_1C,I_1D,I_1E,I_1F,I_1S];
I_2=[I_2A,I_2B,I_2C,I_2D,I_2E,I_2F,I_2S];
I_3=[I_3A,I_3B,I_3C,I_3D,I_3E,I_3F,I_3S];
I_4=[I_4A,I_4B,I_4C,I_4D,I_4E,I_4F,I_4S];
I_5=[I_5A,I_5B,I_5C,I_5D,I_5E,I_5F,I_5S];
I_6=[I_6A,I_6B,I_6C,I_6D,I_6E,I_6F,I_6S];

%
I_A=[I_1A,I_2A,I_3A,I_4A,I_5A,I_6A];
I_B=[I_1B,I_2B,I_3B,I_4B,I_5B,I_6B];
I_C=[I_1C,I_2C,I_3C,I_4C,I_5C,I_6C];
I_D=[I_1D,I_2D,I_3D,I_4D,I_5D,I_6D];
I_E=[I_1E,I_2E,I_3E,I_4E,I_5E,I_6E];
I_F=[I_1F,I_2F,I_3F,I_4F,I_5F,I_6F];
I_S=[I_1S,I_2S,I_3S,I_4S,I_5S,I_6S];

Ca=[0,0.001,0.01,0.02,0.04,0.06];
St=[0,1,2,4,8,16,32];
%
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

 plot(H_2,MI_2,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$Ca=0.001$'); hold on

 plot(H_3,MI_3,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$Ca=0.01$'); hold on

 plot(H_4,MI_4,'Color',[0.5,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$Ca=0.02$'); hold on

 plot(H_5,MI_5,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$Ca=0.04$'); hold on

 plot(H_6,MI_6,'Color',[1,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','<','DisplayName','$Ca=0.06$'); hold on

  


%   plot(x,M_4A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=4$'); hold on
% plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=16$'); hold on
%   plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=32$'); hold on
%     plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$Steady$'); hold on
 
 
   ylim([0 1])
   xlim([0 3])
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
 plot(I_A,Ca,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','o','DisplayName','$rigid$'); hold on

 plot(I_B,Ca,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$Ca=0.001$'); hold on

 plot(I_C,Ca,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$Ca=0.01$'); hold on

 plot(I_D,Ca,'Color',[0.5,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$Ca=0.02$'); hold on

 plot(I_E,Ca,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$Ca=0.04$'); hold on

 plot(I_F,Ca,'Color',[1,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','<','DisplayName','$Ca=0.06$'); hold on

 plot(I_S,Ca,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$rigid$'); hold on


%   plot(x,M_4A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=4$'); hold on
% plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=16$'); hold on
%   plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=32$'); hold on
%     plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$Steady$'); hold on
 
 
%    ylim([0 1])
%    xlim([0 3])
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
 plot(I_1,St,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','o','DisplayName','$rigid$'); hold on

 plot(I_2,St,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','s','DisplayName','$Ca=0.001$'); hold on

 plot(I_3,St,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','d','DisplayName','$Ca=0.01$'); hold on

 plot(I_4,St,'Color',[0.5,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','^','DisplayName','$Ca=0.02$'); hold on

 plot(I_5,St,'Color',[0,0.5,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','p','DisplayName','$Ca=0.04$'); hold on

 plot(I_6,St,'Color',[1,0,0.5],'LineStyle',':','linewidth',2.5,'MarkerSize',16,'Marker','<','DisplayName','$Ca=0.06$'); hold on

%   plot(x,M_4A,'Color',[1,0,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=1$'); hold on
%  plot(x,M_4B,'Color',[0,0.5,0],'LineStyle',':','linewidth',2.5,'DisplayName','$St=2$'); hold on
%  plot(x,M_4C,'Color',[0,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=4$'); hold on
% plot(x,M_4D,'Color',[0.7,0.3,0.2],'LineStyle',':','linewidth',2.5,'DisplayName','$St=8$'); hold on
%  plot(x,M_4E,'Color',[1,0,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=16$'); hold on
%   plot(x,M_4F,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$St=32$'); hold on
%     plot(x,M_4S,'Color',[0.3,0.7,1],'LineStyle',':','linewidth',2.5,'DisplayName','$Steady$'); hold on
 
 
%    ylim([0 1])
%    xlim([0 3])
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
