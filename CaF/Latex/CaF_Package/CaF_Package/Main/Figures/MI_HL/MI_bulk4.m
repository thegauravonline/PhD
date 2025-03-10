


%%------44444444444444444444444444444444--------------%%%%%%%%%%%%%%%%

clear all;
% close all;
clc;
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_1=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['4a']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_4);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_4);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));
dm_4a=1-sig/sig_max;

save('MI_bulk_4.mat',"dm_4a")
toc;

clear all;

load('MI_bulk_4.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_4=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['4b']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_4);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_4);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));

dm_4b=1-sig/sig_max;

save('MI_bulk_4.mat',"dm_4a","dm_4b")
toc;

%%
clear all;

load('MI_bulk_4.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_4=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['4c']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_4);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_4);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));
dm_4c=1-sig/sig_max;

save('MI_bulk_4.mat',"dm_4a","dm_4b","dm_4c")
toc;

%%
clear all;

load('MI_bulk_4.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_4=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['4d']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_4);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_4);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));

sig_max=sqrt(tb_avg.*(1-tb_avg));
dm_4d=1-sig/sig_max;

save('MI_bulk_4.mat',"dm_4a","dm_4b","dm_4c","dm_4d")
toc;

%%
clear all;

load('MI_bulk_4.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_4=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['4e']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_4);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_4);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));

dm_4e=1-sig/sig_max;

save('MI_bulk_4.mat',"dm_4a","dm_4b","dm_4c","dm_4d","dm_4e")
toc;

return;





