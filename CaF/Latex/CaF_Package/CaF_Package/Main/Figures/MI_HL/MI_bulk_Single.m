


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
  x_1=289; x_2=284; x_3=279; x_4=274; x_0=341; x_Single=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['Singlea']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_Single);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_Single);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));
dm_Singlea=1-sig/sig_max;

save('MI_bulk_Single.mat',"dm_Singlea")
toc;

clear all;

load('MI_bulk_Single.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_Single=289; x_2=284; x_3=279; x_4=274; x_0=341; x_Single=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['Singleb']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_Single);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_Single);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));

dm_Singleb=1-sig/sig_max;

save('MI_bulk_Single.mat',"dm_Singlea","dm_Singleb")
toc;

%%
clear all;

load('MI_bulk_Single.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_Single=289; x_2=284; x_3=279; x_4=274; x_0=341; x_Single=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['Singlec']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_Single);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_Single);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));
dm_Singlec=1-sig/sig_max;

save('MI_bulk_Single.mat',"dm_Singlea","dm_Singleb","dm_Singlec")
toc;

%%
clear all;

load('MI_bulk_Single.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_Single=289; x_2=284; x_3=279; x_4=274; x_0=341; x_Single=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['Singled']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_Single);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_Single);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));

sig_max=sqrt(tb_avg.*(1-tb_avg));
dm_Singled=1-sig/sig_max;

save('MI_bulk_Single.mat',"dm_Singlea","dm_Singleb","dm_Singlec","dm_Singled")
toc;

%%
clear all;

load('MI_bulk_Single.mat')
%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
  x_Single=289; x_2=284; x_3=279; x_4=274; x_0=341; x_Single=274; x_N=257; %12h
%----------------------
%%
tic; file_tag=['Singlee']
load(['uv_',file_tag,'.mat']);
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
load(['pt2_',file_tag,'.mat']);
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
ui=uu_1A_mean(:,x_Single);
ui_avg=mean(ui);
ti=t22_1a_mean(:,x_Single);
N=length(ui);
tb_avg=sum(ti.*ui)./(N*ui_avg);
sig=sqrt((1/(N*ui_avg)).*(sum((ti-tb_avg).^2.*ui)));
sig_max=sqrt(tb_avg.*(1-tb_avg));

dm_Singlee=1-sig/sig_max;

save('MI_bulk_Single.mat',"dm_Singlea","dm_Singleb","dm_Singlec","dm_Singled","dm_Singlee")
toc;

return;





