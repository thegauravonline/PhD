
% radial distances between the filaments
% row wise: Re=200, 400, 800, 1600, and 3200
% columnwise d/h: 0.5, 1, 1.5 2
% distance is calculated for T=15 s to 40 s with 90% of the last part 


close all;
clear all;
clc;

h_ref=0.4;
w_fil=0.02;


% %deflection data for filament_1
% dR=[
% 0.1059	0.1069	0.1078	0.1067	0.1067
% 0.0973	0.0982	0.0989	0.0996	0.0992
% 0.0958	0.0968	0.0976	0.0986	0.1002
% 0.0958	0.0968	0.0978	0.0985	0.1001
% ];


%deflection data for filament : Row-1 = Single filament, Row-2 =
%0h_filament1, Row-3 = 0h_filament2
dR=[
0.0884	0.0896	0.0903	0.0913	0.0931
0.0354	0.0354	0.0355	0.0356	0.0353
0.0355	0.0354	0.0353	0.0354	0.0351
];


Re=[200 400 800 1600 3200];
dh=[0 0.5 1.5 2.0];




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIngle Filament deflection Vs Re
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginx=0.13;
beginy=0.14;
xsize=0.85;
ysize=0.83;

figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',12,'LineWidth',1.5,'Parent',figure1,'XScale','log','Yscale','log',...
    'Position',[0.170175438596491 0.151111111111111 0.823859649122807 0.844444444444445]); % adjust by hand
box(axes1,'on');
hold(axes1,'all');
% 


% deflection
x = log10(Re);
y = log10(dR(1,:)./w_fil);

% fit strainght line
p = polyfit(x,y,1);
x1 = linspace(log10(10),log10(5000),11);
y1 = polyval(p,x1);

p

a(11)=plot(10.^x,10.^y,'ks','markersize',14,'markerfacecolor','b','linewidth',1.5,'DisplayName','Single'); hold on
a(12)=plot(10.^x1,10.^y1,'k--','linewidth',3);hold on

% % Create legend
% legend1 = legend(axes1,a(11));
% set(legend1,...
%     'Position',[0.19590643572877 0.783925931367609 0.198245611054855 0.19288888363485]);

xlabel('Re','fontsize',20)
ylabel('\delta_x','fontsize', 20)

xlim([100 4000])
ylim([4 5.1])


sl=p(1);
sl1=sprintf('%.3f',sl);


slp=['slope=',num2str(sl1)];
    
% Create textbox
annotation(figure1,'textbox',...
    [0.485714285714286 0.432333335391113 0.316071419683951 0.0928571407993635],...
    'String',slp,...
    'LineStyle','none',...
    'FontWeight','bold',...
    'FontSize',18);



return;
















%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% to view time related figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginx=0.13;
beginy=0.14;
xsize=0.85;
ysize=0.83;

figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',12,'LineWidth',1.5,'Parent',figure1,'XScale','log','Yscale','linear',...
    'XTick',[0 100 1000 10000],'YTick',[0.01 0.02 0.03 0.04 0.05 ],...
    'Position',[0.170175438596491 0.151111111111111 0.823859649122807 0.844444444444445]); % adjust by hand
box(axes1,'on');
hold(axes1,'all');
% 
a(11)=plot(Re, dR(1,:),'ks','markersize',8,'markerfacecolor','b','linewidth',1.5,'DisplayName','d/h=0.5'); hold on
a(12)=plot(Re, dR(2,:),'ko','markersize',10,'markerfacecolor','r','linewidth',1.5,'DisplayName','d/h=1.0'); hold on
a(13)=plot(Re, dR(3,:),'k^','markersize',8,'markerfacecolor','c','linewidth',1.5,'DisplayName','d/h=1.5'); hold on
% a(14)=plot(Re, dR(4,:),'k^','markersize',8,'markerfacecolor','g','linewidth',1.5,'DisplayName','d/h=2.0'); hold on
% 
% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.19590643572877 0.783925931367609 0.198245611054855 0.19288888363485]);

plot([0.1 11000],[0.03 0.03],'k--','linewidth',2); hold on

xlabel('Re','fontsize',20)
ylabel('\delta_x','fontsize', 20)



xlim([100 11000])
ylim([0.00 0.1])

% 
% 
% axes2 = axes('Parent',figure1,...
%     'Position',[0.633395989974937 0.715238095238098 0.349642857142856 0.256666666666667]);
% box(axes2,'on');
% hold(axes2,'on');
% 
% plot(dh, dR(:,1),'ro-','markersize',8,'markerfacecolor','r','linewidth',1.5,'DisplayName','Re=200'); hold on
% plot(dh, dR(:,3),'b^-','markersize',8,'linewidth',1.5,'DisplayName','Re=3200'); hold on
% 
% plot([0 3],[0.03 0.03],'k--','linewidth',2); hold on
% 
% xlabel('d/h')
% ylabel('\delta_x')
% xlim([0 2.1])
% ylim([0.02 0.05])
% 
% % Create textarrow
% annotation(figure1,'textarrow',[0.827272727272727 0.778181818181818],...
%     [0.941025641025641 0.92051282051282],'Color',[0 0 1],'String',{'Re=3200'});
% 
% % Create textarrow
% annotation(figure1,'textarrow',[0.735279106858056 0.745805422647529],...
%     [0.837264957264958 0.906153846153847],'Color',[1 0 0],'String',{'Re=200'});
% 






