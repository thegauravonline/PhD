% function main

%clear all;
% close all;
clc;

%1
t1=1; t2=4000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
%----------------------

%save(['M_t11_all_1_4000.mat'],'M_1A', 'M_1B', 'M_1C', 'M_1D', 'M_1E', 'M_1F','M_1S', 'M_2A', 'M_2B', 'M_2C', 'M_2D', 'M_2E', 'M_2F','M_2S', 'M_3A', 'M_3B', 'M_3C', 'M_3D', 'M_3E', 'M_3F','M_3S', 'M_4A', 'M_4B', 'M_4C', 'M_4D', 'M_4E', 'M_4F','M_4S', 'M_5A', 'M_5B', 'M_5C', 'M_5D', 'M_5E', 'M_5F', 'M_5S', 'M_6A', 'M_6B', 'M_6C', 'M_6D', 'M_6E', 'M_6F', 'M_6S');


%%
tic; file_tag=['2S']
load(['t_',file_tag,'.mat'])
t11_3D_1A=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1A_mean=mean(t11_3D_1A,3);     %
var_1A=sqrt(mean((t11_1A_mean-0.5).^2));    %row wise mean
M_2S=1-sqrt((var_1A.^2)./(max(var_1A)^2));      clear t11* var*; toc;

return;

tic; file_tag=['5A']
load(['t_',file_tag,'.mat'])
t11_3D_1A=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1A_mean=mean(t11_3D_1A,3);     %
var_1A=sqrt(mean((t11_1A_mean-0.5).^2));    %row wise mean
M_5A=1-sqrt((var_1A.^2)./(max(var_1A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5B']
load(['t_',file_tag,'.mat'])
t11_3D_1B=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1B_mean=mean(t11_3D_1B,3);     %
var_1B=sqrt(mean((t11_1B_mean-0.5).^2));    %row wise mean
M_5B=1-sqrt((var_1B.^2)./(max(var_1B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5C']
load(['t_',file_tag,'.mat'])
t11_3D_1C=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1C_mean=mean(t11_3D_1C,3);     %
var_1C=sqrt(mean((t11_1C_mean-0.5).^2));    %row wise mean
M_5C=1-sqrt((var_1C.^2)./(max(var_1C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5D']
load(['t_',file_tag,'.mat'])
t11_3D_1D=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1D_mean=mean(t11_3D_1D,3);     %
var_1D=sqrt(mean((t11_1D_mean-0.5).^2));    %row wise mean
M_5D=1-sqrt((var_1D.^2)./(max(var_1D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5E']
load(['t_',file_tag,'.mat'])
t11_3D_1E=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1E_mean=mean(t11_3D_1E,3);     %
var_1E=sqrt(mean((t11_1E_mean-0.5).^2));    %row wise mean
M_5E=1-sqrt((var_1E.^2)./(max(var_1E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5F']
load(['t_',file_tag,'.mat'])
t11_3D_1F=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1F_mean=mean(t11_3D_1F,3);     %
var_1F=sqrt(mean((t11_1F_mean-0.5).^2));    %row wise mean
M_5F=1-sqrt((var_1F.^2)./(max(var_1F)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5S']
load(['t_',file_tag,'.mat'])
t11_3D_1F=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1F_mean=mean(t11_3D_1F,3);     %
var_1F=sqrt(mean((t11_1F_mean-0.5).^2));    %row wise mean
M_5S=1-sqrt((var_1F.^2)./(max(var_1F)^2));      clear t11* var*; toc;
%%
return;


%%
tic; file_tag=['2A']
load(['t_',file_tag,'.mat'])
t11_3D_2A=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2A_mean=mean(t11_3D_2A,3);     %
var_2A=sqrt(mean((t11_2A_mean-0.5).^2));    %row wise mean
M_2A=1-sqrt((var_2A.^2)./(max(var_2A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['2B']
load(['t_',file_tag,'.mat'])
t11_3D_2B=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2B_mean=mean(t11_3D_2B,3);     %
var_2B=sqrt(mean((t11_2B_mean-0.5).^2));    %row wise mean
M_2B=1-sqrt((var_2B.^2)./(max(var_2B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['2C']
load(['t_',file_tag,'.mat'])
t11_3D_2C=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2C_mean=mean(t11_3D_2C,3);     %
var_2C=sqrt(mean((t11_2C_mean-0.5).^2));    %row wise mean
M_2C=1-sqrt((var_2C.^2)./(max(var_2C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['2D']
load(['t_',file_tag,'.mat'])
t11_3D_2D=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2D_mean=mean(t11_3D_2D,3);     %
var_2D=sqrt(mean((t11_2D_mean-0.5).^2));    %row wise mean
M_2D=1-sqrt((var_2D.^2)./(max(var_2D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['2E']
load(['t_',file_tag,'.mat'])
t11_3D_2E=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2E_mean=mean(t11_3D_2E,3);     %
var_2E=sqrt(mean((t11_2E_mean-0.5).^2));    %row wise mean
M_2E=1-sqrt((var_2E.^2)./(max(var_2E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['2F']
load(['t_',file_tag,'.mat'])
t11_3D_2F=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2F_mean=mean(t11_3D_2F,3);     %
var_2F=sqrt(mean((t11_2F_mean-0.5).^2));    %row wise mean
M_2F=1-sqrt((var_2F.^2)./(max(var_2F)^2));      clear t11* var*; toc;
%%


%%
tic; file_tag=['3A']
load(['t_',file_tag,'.mat'])
t11_3D_3A=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3A_mean=mean(t11_3D_3A,3);     %
var_3A=sqrt(mean((t11_3A_mean-0.5).^2));    %row wise mean
M_3A=1-sqrt((var_3A.^2)./(max(var_3A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['3B']
load(['t_',file_tag,'.mat'])
t11_3D_3B=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3B_mean=mean(t11_3D_3B,3);     %
var_3B=sqrt(mean((t11_3B_mean-0.5).^2));    %row wise mean
M_3B=1-sqrt((var_3B.^2)./(max(var_3B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['3C']
load(['t_',file_tag,'.mat'])
t11_3D_3C=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3C_mean=mean(t11_3D_3C,3);     %
var_3C=sqrt(mean((t11_3C_mean-0.5).^2));    %row wise mean
M_3C=1-sqrt((var_3C.^2)./(max(var_3C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['3D']
load(['t_',file_tag,'.mat'])
t11_3D_3D=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3D_mean=mean(t11_3D_3D,3);     %
var_3D=sqrt(mean((t11_3D_mean-0.5).^2));    %row wise mean
M_3D=1-sqrt((var_3D.^2)./(max(var_3D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['3E']
load(['t_',file_tag,'.mat'])
t11_3D_3E=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3E_mean=mean(t11_3D_3E,3);     %
var_3E=sqrt(mean((t11_3E_mean-0.5).^2));    %row wise mean
M_3E=1-sqrt((var_3E.^2)./(max(var_3E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['3F']
load(['t_',file_tag,'.mat'])
t11_3D_3F=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3F_mean=mean(t11_3D_3F,3);     %
var_3F=sqrt(mean((t11_3F_mean-0.5).^2));    %row wise mean
M_3F=1-sqrt((var_3F.^2)./(max(var_3F)^2));      clear t11* var*; toc;
%%


%%
tic; file_tag=['4A']
load(['t_',file_tag,'.mat'])
t11_4D_4A=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4A_mean=mean(t11_4D_4A,3);     %
var_4A=sqrt(mean((t11_4A_mean-0.5).^2));    %row wise mean
M_4A=1-sqrt((var_4A.^2)./(max(var_4A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['4B']
load(['t_',file_tag,'.mat'])
t11_4D_4B=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4B_mean=mean(t11_4D_4B,3);     %
var_4B=sqrt(mean((t11_4B_mean-0.5).^2));    %row wise mean
M_4B=1-sqrt((var_4B.^2)./(max(var_4B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['4C']
load(['t_',file_tag,'.mat'])
t11_4D_4C=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4C_mean=mean(t11_4D_4C,3);     %
var_4C=sqrt(mean((t11_4C_mean-0.5).^2));    %row wise mean
M_4C=1-sqrt((var_4C.^2)./(max(var_4C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['4D']
load(['t_',file_tag,'.mat'])
t11_4D_4D=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4D_mean=mean(t11_4D_4D,3);     %
var_4D=sqrt(mean((t11_4D_mean-0.5).^2));    %row wise mean
M_4D=1-sqrt((var_4D.^2)./(max(var_4D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['4E']
load(['t_',file_tag,'.mat'])
t11_4D_4E=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4E_mean=mean(t11_4D_4E,3);     %
var_4E=sqrt(mean((t11_4E_mean-0.5).^2));    %row wise mean
M_4E=1-sqrt((var_4E.^2)./(max(var_4E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['4F']
load(['t_',file_tag,'.mat'])
t11_4D_4F=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4F_mean=mean(t11_4D_4F,3);     %
var_4F=sqrt(mean((t11_4F_mean-0.5).^2));    %row wise mean
M_4F=1-sqrt((var_4F.^2)./(max(var_4F)^2));      clear t11* var*; toc;
%%


%%
tic; file_tag=['6A']
load(['t_',file_tag,'.mat'])
t11_6D_6A=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6A_mean=mean(t11_6D_6A,3);     %
var_6A=sqrt(mean((t11_6A_mean-0.5).^2));    %row wise mean
M_6A=1-sqrt((var_6A.^2)./(max(var_6A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['6B']
load(['t_',file_tag,'.mat'])
t11_6D_6B=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6B_mean=mean(t11_6D_6B,3);     %
var_6B=sqrt(mean((t11_6B_mean-0.5).^2));    %row wise mean
M_6B=1-sqrt((var_6B.^2)./(max(var_6B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['6C']
load(['t_',file_tag,'.mat'])
t11_6D_6C=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6C_mean=mean(t11_6D_6C,3);     %
var_6C=sqrt(mean((t11_6C_mean-0.5).^2));    %row wise mean
M_6C=1-sqrt((var_6C.^2)./(max(var_6C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['6D']
load(['t_',file_tag,'.mat'])
t11_6D_6D=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6D_mean=mean(t11_6D_6D,3);     %
var_6D=sqrt(mean((t11_6D_mean-0.5).^2));    %row wise mean
M_6D=1-sqrt((var_6D.^2)./(max(var_6D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['6E']
load(['t_',file_tag,'.mat'])
t11_6D_6E=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6E_mean=mean(t11_6D_6E,3);     %
var_6E=sqrt(mean((t11_6E_mean-0.5).^2));    %row wise mean
M_6E=1-sqrt((var_6E.^2)./(max(var_6E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['6F']
load(['t_',file_tag,'.mat'])
t11_6D_6F=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6F_mean=mean(t11_6D_6F,3);     %
var_6F=sqrt(mean((t11_6F_mean-0.5).^2));    %row wise mean
M_6F=1-sqrt((var_6F.^2)./(max(var_6F)^2));      clear t11* var*; toc;
%%
tic; file_tag=['6S']
load(['t_',file_tag,'.mat'])
t11_6D_6F=cat(3,t11{t1:t2,:});  %6D Matrix data
t11_6F_mean=mean(t11_6D_6F,3);     %
var_6F=sqrt(mean((t11_6F_mean-0.5).^2));    %row wise mean
M_6S=1-sqrt((var_6F.^2)./(max(var_6F)^2));      clear t11* var*; toc;
%%
return;


t11_3D=cat(3,t11{t1:t2,:});     %3D Matrix data
t11_mean=mean(t11_3D,3);     %


var=sqrt(mean((t11_mean-0.5).^2));    %row wise mean
M=1-sqrt((var.^2)./(max(var)^2));      clear t11* var*; toc;
plot(M);


t11_3D=cat(3,t11{t1:t2,:});     %3D Matrix data
t11_mean=mean(t11_3D,3);     %


var=sqrt(mean((t11_mean-0.5).^2));    %row wise mean
M=1-sqrt((var.^2)./(max(var)^2));      clear t11* var*; toc;
plot(M);


return;
plot(mm);


t22_3D=cat(3,t22{t1:t2,:});
t11_mean=mean(uu_3D,3);

t22_3D=cat(3,t22{t1:t2,:});
t22_mean=mean(uu_3D,3);




vv_3D=cat(3,vv{t1:t2,:});
vm=mean(vv_3D,3);
cu=curl(x,y,uu{1,1},vv{1,1});

xs=x; ys=y;
% return
%  [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
%      U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean

ni=118; nj=360;
% U_by_t=U_by_t(:,t1:t2);
% V_by_t=V_by_t(:,t1:t2);
% u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
% um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
% m1=floor(0.3*size(ys,2)) %picking centerline of channel
% vel_m=[ys(:,m1),um(:,m1)]; %picking centerline of channel
% x_loc1=xs(5,m1);

h_ref=0.4;
 m1=floor(0.035*size(ys,2));
 vel_m1=[ys(:,m1),um(:,m1)];
 x_loc1=xs(5,m1)/h_ref
 
 m2=floor(0.22*size(ys,2));
  vel_m2=[ys(:,m2),um(:,m2)];
  x_loc2=xs(5,m2)/h_ref;
  
  m3=floor(0.45*size(ys,2));
   vel_m3=[ys(:,m3),um(:,m3)];
   x_loc3=xs(5,m3)/h_ref;
   
   m4=floor(0.61*size(ys,2));
   vel_m4=[ys(:,m4),um(:,m4)];
    x_loc4=xs(5,m4)/h_ref;
    
    m5=floor(0.725*size(ys,2));
    vel_m5=[ys(:,m5),um(:,m5)];
     x_loc5=xs(5,m5)/h_ref;
           
     m6=floor(0.82*size(ys,2));
     vel_m6=[ys(:,m6),um(:,m6)];
      x_loc6=xs(5,m6)/h_ref;

      m7=floor(0.899*size(ys,2));
      vel_m7=[ys(:,m7),um(:,m7)];
       x_loc7=xs(5,m7)/h_ref;
         
       m8=floor(0.948*size(ys,2));
       vel_m8=[ys(:,m8),um(:,m8)];
        x_loc8=xs(5,m8)/h_ref;
           
        m9=floor(0.978*size(ys,2));
        vel_m9=[ys(:,m9),um(:,m9)];
         x_loc9=xs(5,m9)/h_ref;

         m10=floor(1*size(ys,2));
         vel_m10=[ys(:,m10),um(:,m10)];
          x_loc10=xs(5,m10)/h_ref;

          
          % 
% x_loc3=xs(5,m1)
% 
% x_loc4=xs(5,m1)
% x_loc5=xs(5,m1);
% plot(vel_m(:,2),x_loc+vel_m(:,1));
%%
%-------------------------------------------------------
% streamwise velocity along the channel's mid-line
%--------------------------------------------------------
%
beginx=0.07;
beginy=0.20;
xsize=0.92;
ysize=0.7;
%
figure3= figure('name',[file_tag],'Color',[1 1 1]);  
axes3  = axes('fontsize',30,'LineWidth',2,'Parent',figure3,'XScale','linear','Yscale','linear',...
    'Position',[beginx beginy xsize ysize],'XTick',[0 0.5 2 3.5 5 6.5 8 9.5 11 12.5 14],'YTick',[0 0.5 1],'TickLength',[0.005 0.005],...
    'TickLabelInterpreter','latex',...
    'FontSize',30); % adjust by hand
set(gcf,'Position',[10 50 3500 320])
box(axes3,'on');
hold(axes3,'all');
%
%
vel_mag=0.3;
 h(4)=plot(x_loc1+((1/vel_mag)*vel_m1(:,2)),vel_m1(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc2+((1/vel_mag)*vel_m2(:,2)),vel_m2(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc3+((1/vel_mag)*vel_m3(:,2)),vel_m3(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc4+((1/vel_mag)*vel_m4(:,2)),vel_m4(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc5+((1/vel_mag)*vel_m5(:,2)),vel_m5(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc6+((1/vel_mag)*vel_m6(:,2)),vel_m6(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc7+((1/vel_mag)*vel_m7(:,2)),vel_m7(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc8+((1/vel_mag)*vel_m8(:,2)),vel_m8(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(x_loc9+((1/vel_mag)*vel_m9(:,2)),vel_m9(:,1)./h_ref,'b','linewidth',2,'DisplayName','Wo=0');hold on
%  h(4)=plot(x_loc10+((1/vel_mag)*vel_m10(:,2)),vel_m10(:,1)./h_ref,'k','linewidth',2,'DisplayName','Wo=0');hold on

%  h(4)=plot(vel_B(:,1),vel_B(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
%  h(4)=plot(vel_C(:,1),vel_C(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
%  h(4)=plot(vel_D(:,1),vel_D(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
%  h(4)=plot(vel_E(:,1),vel_E(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
%  h(4)=plot(vel_F(:,1),vel_F(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
%   h(4)=plot(vel_F(:,1),vel_S(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
plot([x_loc1 x_loc1],[0 1],'k-.','linewidth',1);
% plot([x_loc2 x_loc2],[0 1],'k-.','linewidth',1);
plot([x_loc3 x_loc3],[0 1],'k-.','linewidth',1);
plot([x_loc4 x_loc4],[0 1],'k-.','linewidth',1);
plot([x_loc5 x_loc5],[0 1],'k-.','linewidth',1);
plot([x_loc6 x_loc6],[0 1],'k-.','linewidth',1);
plot([x_loc7 x_loc7],[0 1],'k-.','linewidth',1);
plot([x_loc8 x_loc8],[0 1],'k-.','linewidth',1);
plot([x_loc9 x_loc9],[0 1],'k-.','linewidth',1);
% plot([x_loc10 x_loc10],[0 1],'k-.','linewidth',1);
%
% % Create legend
% legend1=legend(axes3,'show');
% set(legend1,...
%     'Position',[0.0983539279209505 0.528439163373261 0.116049380766021 0.355158720224623],'fontsize',16,...
%     'interpreter','latex');
%
plot([2 2],[0 1],'m--','linewidth',1.5);hold on
% plot([1.6 1.6],[-500 5000],'m--','linewidth',1.5);hold on
%


% Create line


%CREATELINE(figure1)
%  FIGURE1:  annotation figure

%  Auto-generated by MATLAB on 16-Mar-2021 12:14:20
annotation(figure3,'line',[0.198596869940637 0.198596869940637],...
    [0.62775 0.90875],'LineWidth',8);
% Create line
annotation(figure3,'line',[0.198596869940637 0.198596869940637],...
    [0.20525 0.48625],'LineWidth',8);


xlim([0.1 14])
 ylim([0 1])
xlabel('$x/h$','interpreter','latex','fontsize',30);
%ylabel('$V_{cd}/V_{cs}$','interpreter','latex')
ylabel('$y/h$','interpreter','latex','fontsize',36)
%
% % Create textbox
% annotation(figure3,'textbox',...
%     [0.81625 0.715000004529953 0.241249993182719 0.191999995470047],...
%     'String',{''},...
%     'FontSize',24,...
%     'EdgeColor',[1 1 1],...
%     'interpreter','latex');

saveas(gcf,[file_tag,'_velpro.png'])



%%

%-------------------------------------------------------
        % mean flow  along the channel's
        %--------------------------------------------------------
        %
        beginx=0.07;
        beginy=0.20;
        xsize=0.92;
        ysize=0.7;
        %
        figure3= figure('name',[file_tag],'Color',[1 1 1]);  
        axes3  = axes('fontsize',30,'LineWidth',2,'Parent',figure3,'XScale','linear','Yscale','linear',...
            'Position',[beginx beginy xsize ysize],'XTick',[0 0.5 2 3.5 5 6.5 8 9.5 11 12.5 14],'YTick',[0 0.5 1],'TickLength',[0.005 0.005],...
            'TickLabelInterpreter','latex',...
            'FontSize',30); % adjust by hand
        set(gcf,'Position',[10 50 3500 320])
        box(axes3,'on');
        hold(axes3,'all');
        %
        %

        contourf(xs./h_ref,ys./h_ref,um); hold on
        contour(xs./h_ref,ys./h_ref,um); hold on;
        colormap('jet');
        caxis([-0.2 0.2]);
%         colorbar

%         lh=quiver(xs(1:10:end)./h_ref,ys(1:10:end)./h_ref,um(1:10:end),vm(1:10:end)); hold on;
%         set(lh,'linewidth',1.0);
%         set(lh,'color',[0,0,0]);


        xlim([0.1 14])
         ylim([0 1])
        xlabel('$x/h$','interpreter','latex','fontsize',30);
        %ylabel('$V_{cd}/V_{cs}$','interpreter','latex')
        ylabel('$y/h$','interpreter','latex','fontsize',36)

        saveas(gcf,[file_tag,'_umean.png'])
return;

%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'A.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_m=[xs(m1,:);um(m1,:)]; %picking centerline of channel

%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'B.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_B=[xs(m1,:);um(m1,:)]; %picking centerline of channel
%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'C.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_C=[xs(m1,:);um(m1,:)]; %picking centerline of channel
%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'D.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_D=[xs(m1,:);um(m1,:)]; %picking centerline of channel
%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'E.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_E=[xs(m1,:);um(m1,:)]; %picking centerline of channel
%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'F.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_F=[xs(m1,:);um(m1,:)]; %picking centerline of channel
%% ---------------------------
load(['/media/magcyan/cut50/Article2/Matlab/POD/',file_tag,'S.mat']);
 [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,...
     U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data);
% mean
ni=118; nj=360;
U_by_t=U_by_t(:,t1:t2);
V_by_t=V_by_t(:,t1:t2);
u_tavg=mean(U_by_t,2); v_tavg=mean(V_by_t,2);
um=reshape(u_tavg,ni,nj); vm=reshape(v_tavg,ni,nj);
m1=floor(0.5*size(xs,1)); %picking centerline of channel
vel_S=[xs(m1,:);um(m1,:)]; %picking centerline of channel


%
% %---------------------------
% tic; file_tag=['Re',num2str(Re),'dh_2p0']
% file_name=['dbyh2p0/data_pod_',file_tag,'.mat']
% load(file_name);
% [x,y,um,vm,u_m1,v_m1,om,om_m1,om_m2]=Read_data(data800);
% m1=floor(0.5*size(x,1));
% vel_dbyh2p0=[x(m1,:);um(m1,:)];
% %
% %----------------------
% tic; file_tag=['Re',num2str(Re),'dh_1p0']
% file_name=['dbyh1p0/data_pod_',file_tag,'.mat']
% load(file_name);
% [x,y,um,vm,u_m1,v_m1,om,om_m1,om_m2]=Read_data(data800);
% m1=floor(0.5*size(x,1));
% vel_dbyh1p0=[x(m1,:);um(m1,:)];
% %
% %----------------------
% tic; file_tag=['Re',num2str(Re),'dh_0p0']
% file_name=['dbyh0p0/data_pod_',file_tag,'.mat']
% load(file_name);
% [x,y,um,vm,u_m1,v_m1,om,om_m1,om_m2]=Read_data(data800);
% m1=floor(0.5*size(x,1));
% vel_m=[x(m1,:);um(m1,:)];
%

%-------------------------------
% smooth
%-------------------------------
sm=0.1;
h=0.4;  nu=2e-4; Re=500;
%Re=h/(2*nu);
%
% %
% xx=vel_single(1,:); yy=Re.*(vel_single(2,:)); vel_single=[];
% ya = smooth(xx,yy,sm,'loess');
% vel_single=[xx',ya];


% %
% xx=vel_dbyh2p0(1,:); yy=Re.*(vel_dbyh2p0(2,:)); vel_dbyh2p0=[];
% ya = smooth(xx,yy,sm,'loess');
% vel_dbyh2p0=[xx',ya];
% %
% xx=vel_dbyh1p0(1,:); yy=Re.*(vel_dbyh1p0(2,:)); vel_dbyh1p0=[];
% ya = smooth(xx,yy,sm,'loess');
% vel_dbyh1p0=[xx',ya];
%
sm=0.36;
xx=vel_m(1,:); yy=Re.*(vel_m(2,:)); vel_m=[];
ya = smooth(xx,yy,sm,'loess');
vel_m=[xx',ya];

xx=vel_B(1,:); yy=Re.*(vel_B(2,:)); vel_B=[];
ya = smooth(xx,yy,sm,'loess');
vel_B=[xx',ya];

xx=vel_C(1,:); yy=Re.*(vel_C(2,:)); vel_C=[];
ya = smooth(xx,yy,sm,'loess');
vel_C=[xx',ya];

xx=vel_D(1,:); yy=Re.*(vel_D(2,:)); vel_D=[];
ya = smooth(xx,yy,sm,'loess');
vel_D=[xx',ya];

xx=vel_E(1,:); yy=Re.*(vel_E(2,:)); vel_E=[];
ya = smooth(xx,yy,sm,'loess');
vel_E=[xx',ya];

xx=vel_F(1,:); yy=Re.*(vel_F(2,:)); vel_F=[];
ya = smooth(xx,yy,sm,'loess');
vel_F=[xx',ya];

xx=vel_S(1,:); yy=Re.*(vel_S(2,:)); vel_S=[];
ya = smooth(xx,yy,sm,'loess');
vel_S=[xx',ya];
%
%


%-------------------------------------------------------
% streamwise velocity along the channel's mid-line
%--------------------------------------------------------
%
beginx=0.06;
beginy=0.20;
xsize=0.9;
ysize=0.7;
%
figure3= figure('Color',[1 1 1]);  
axes3  = axes('fontsize',14,'LineWidth',2,'Parent',figure3,'XScale','linear','Yscale','linear',...
    'Position',[beginx beginy xsize ysize],'XTickLabel',{'0','1','2','3','4','5','6','7','8'},'XTick',[0 0.4 0.8 1.2 1.6 2 2.4 2.8 3.2 ],'YTick',[0 2000 4000],'TickLength',[0.005 0.005],...
    'TickLabelInterpreter','latex',...
    'FontSize',14); % adjust by hand
set(gcf,'Position',[20 20 1200 400])
box(axes3,'on');
hold(axes3,'all');
%sdsdssdl./ l                    
%
 h(4)=plot(vel_m(:,1),vel_m(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_B(:,1),vel_B(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_C(:,1),vel_C(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_D(:,1),vel_D(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_E(:,1),vel_E(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_F(:,1),vel_F(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_F(:,1),vel_S(:,2)./Uinf_0,'k','linewidth',2,'DisplayName','Wo=0');hold on
%
% Create legend
legend1=legend(axes3,'show');
set(legend1,...
    'Position',[0.0983539279209505 0.528439163373261 0.116049380766021 0.355158720224623],'fontsize',16,...
    'interpreter','latex');
%
plot([0.8 0.8],[-500 5000],'m--','linewidth',1.5);hold on
% plot([1.6 1.6],[-500 5000],'m--','linewidth',1.5);hold on
%
xlim([0.1 5.6])
ylim([-500 4500])
xlabel('x/h','fontsize',30);
%ylabel('$V_{cd}/V_{cs}$','interpreter','latex')
ylabel('$Re_c/Re_{\infty}$','interpreter','latex','fontsize',30)
%
% Create textbox
annotation(figure3,'textbox',...
    [0.81625 0.715000004529953 0.241249993182719 0.191999995470047],...
    'String',{'Re=800'},...
    'FontSize',24,...
    'EdgeColor',[1 1 1],...
    'interpreter','latex');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------------------------------------------------
% streamwise velocity normalized
%--------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
beginx=0.06;
beginy=0.20;
xsize=0.9;
ysize=0.7;
%
figure3= figure('Color',[1 1 1]);  
axes3  = axes('fontsize',14,'LineWidth',2,'Parent',figure3,'XScale','linear','Yscale','linear',...
    'Position',[beginx beginy xsize ysize],'XTickLabel',{'0','1','2','3','4','5','6','7','8'},'XTick',[0 0.4 0.8 1.2 1.6 2 2.4 2.8 3.2 ],'YTick',[0 2 4 6 8],'TickLength',[0.005 0.005],...
    'TickLabelInterpreter','latex',...
    'FontSize',14); % adjust by hand
set(gcf,'Position',[20 20 1200 400])
box(axes3,'on');
hold(axes3,'all')
%
% x0=vel_single(:,1);  y0=vel_single(:,2).*Re;  Uinf=0.8; y0=y0./Uinf;
% x1=vel_dbyh2p0(:,1); y1=vel_dbyh2p0(:,2).*Re; Uinf=0.8; y1=y1./Uinf;
% x2=vel_dbyh1p0(:,1); y2=vel_dbyh1p0(:,2).*Re; Uinf=0.8; y2=y2./Uinf;
% x3=vel_m(:,1); y3=vel_m(:,2).*Re; Uinf_0=0.1; y3=y3./Uinf_0;

%
 h(4)=plot(vel_m(:,1),vel_m(:,2)./vel_S(:,2),'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_B(:,1),vel_B(:,2)./vel_S(:,2),'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_C(:,1),vel_C(:,2)./vel_S(:,2),'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_D(:,1),vel_D(:,2)./vel_S(:,2),'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_E(:,1),vel_E(:,2)./vel_S(:,2),'k','linewidth',2,'DisplayName','Wo=0');hold on
 h(4)=plot(vel_F(:,1),vel_F(:,2)./vel_S(:,2),'k','linewidth',2,'DisplayName','Wo=0');hold on

%
% Create legend
legend1=legend(axes3,'show');
set(legend1,...
    'Position',[0.0983539279209505 0.528439163373261 0.116049380766021 0.355158720224623],'fontsize',16,...
    'interpreter','latex');

%
plot([0 4],[1 1],'r-','linewidth',2);hold on
plot([0.8 0.8],[-2 8.1],'m--','linewidth',1.5);hold on
% plot([1.6 1.6],[-2 8.1],'m--','linewidth',1.5);hold on
%
xlim([0.1 5.6])
ylim([-1 8.1])
xlabel('x/h','fontsize',30);
%ylabel('$V_{cd}/V_{cs}$','interpreter','latex')
ylabel('$Re_{cD}/Re_{cS}$','interpreter','latex','fontsize',30)
%
% Create textbox
annotation(figure3,'textbox',...
    [0.81625 0.715000004529953 0.241249993182719 0.191999995470047],...
    'String',{'Re=800'},...
    'FontSize',24,...
    'EdgeColor',[1 1 1],...
    'interpreter','latex');






% end





function [x,y,xs,ys,ni,nj,ns,U_by_t,V_by_t,U_mean,U_fluc_all,omega_mean,omega_fluc_all]=Read_data(data_info)

%--------------------------------
% field
%------------------------------
%%data200={x,y,um,vm,u_m1,v_m1,u_m2,v_m2,om_m,om_m1,om_m2};
%

ax=data_info(1);
ay=data_info(2);
axs=data_info(3);
ays=data_info(4);
ani=data_info(5);
anj=data_info(6);
ans=data_info(7);
U_by_t=data_info(8);
V_by_t=data_info(9);
aum=data_info(10);
avm=data_info(10);
au_m1=data_info(11);
av_m1=data_info(11);
aom =data_info(12);
 aom_m1=data_info(13);
 aom_m2=data_info(13);

%%%
x=ax{1,1};
y=ay{1,1};
xs=axs{1,1};
ys=ays{1,1};
ni=aum{1,1};
nj=avm{1,1};
ns=ans{1,1};
U_by_t=U_by_t{1,1};
V_by_t=V_by_t{1,1};
U_mean=aum{1,1};
U_fluc_all = au_m1{1,1};
omega_mean=aom{1,1};
omega_fluc_all=aom_m2{1,1};


end
