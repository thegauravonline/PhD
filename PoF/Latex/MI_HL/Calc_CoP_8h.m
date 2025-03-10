% close all;
clear all;
load('CoP_MI+HL_8h.mat');


% the mixing index and head loss in the empty channel with steady inlet flow (i.e., with no plate) ...
% can be very accurately fit as a linear profile, i.e., $MI = 0.015x/h$ and $HL(x)=0.0032x/h$;

Em_S= MI_S/0.015; Em_A= MI_A/0.015; Em_B= MI_B/0.015; Em_C= MI_C/0.015; Em_D= MI_D/0.015; Em_E= MI_E/0.015; Em_F= MI_F/0.015;
Em_1= MI_1/0.015; Em_2= MI_2/0.015; Em_3= MI_3/0.015; Em_4= MI_4/0.015; Em_5= MI_5/0.015; Em_6= MI_6/0.015; 

Eh_S= H_S/0.0032; Eh_A= H_A/0.0032; Eh_B= H_B/0.0032; Eh_C= H_C/0.0032; Eh_D= H_D/0.0032; Eh_E= H_E/0.0032; Eh_F= H_F/0.0032;
Eh_1= H_1/0.0032; Eh_2= H_2/0.0032; Eh_3= H_3/0.0032; Eh_4= H_4/0.0032; Eh_5= H_5/0.0032; Eh_6= H_6/0.0032; 

CoP_1=Em_1./Eh_1; CoP_2=Em_2./Eh_2; CoP_3=Em_3./Eh_3; CoP_4=Em_4./Eh_4; CoP_5=Em_5./Eh_5; CoP_6=Em_6./Eh_6;
CoP_A=Em_A./Eh_A; CoP_B=Em_B./Eh_B; CoP_C=Em_C./Eh_C; CoP_D=Em_D./Eh_D; CoP_E=Em_E./Eh_E; CoP_F=Em_F./Eh_F; CoP_S=Em_S./Eh_S;


St=[0; 1; 2; 4; 8; 16; 32;];
Ca=[0; 0.001; 0.01; 0.02; 0.04; 0.06;];




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
 

 % plot(St,CoP_1,'Color',[1,0,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','square','DisplayName','$Ca=rigid$'); hold on
 % plot(St,CoP_2,'Color',[0,0.5,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','o','DisplayName','$Ca=0.001$'); hold on
 % plot(St,CoP_3,'Color',[0,0,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','>','DisplayName','$Ca=0.01$'); hold on
 % plot(St,CoP_4,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','diamond','DisplayName','$Ca=0.02$'); hold on
 % plot(St,CoP_5,'Color',[1,0,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','^','DisplayName','$Ca =0.04$'); hold on
 % plot(St,CoP_6,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','*','DisplayName','$Ca =0.06$'); hold on


 plot(Ca,CoP_A,'Color',[0.7,0.3,0.1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','square','DisplayName','$St_f=1$'); hold on
 plot(Ca,CoP_B,'Color',[0,0.5,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','o','DisplayName','$St_f=2$'); hold on
 plot(Ca,CoP_C,'Color',[0,0,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','diamond','DisplayName','$St_f=4$'); hold on
 plot(Ca,CoP_D,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','|','DisplayName','$St_f=8$'); hold on
 plot(Ca,CoP_E,'Color',[1,0,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','^','DisplayName','$St_f=16$'); hold on
 plot(Ca,CoP_F,'Color',[0.3,0.7,1],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','pentagram','DisplayName','$St_f=32$'); hold on
 plot(Ca,CoP_S,'Color',[1,0,0],'LineStyle','-','linewidth',4,'MarkerSize',14,'Marker','>','DisplayName','$steady$'); hold on


   % ylim([0 1])
   xlim([-0.0025 0.0625])
%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',4,'DisplayName','$St_f=16$'); hold on

% Create legend
legend4 = legend(axes4,'show');
set(legend4,'Units','points',...
    'NumColumns',1,...
    'Interpreter','latex',...
    'FontSize',24);

xlabel('$St_f$','interpreter','latex','fontsize',32)
ylabel('$CoP=E_M/E_H$','interpreter','latex','fontsize',32)



return;
