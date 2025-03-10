% function main

clear all;
% close all;
clc;

%1
t1=4000; t2=5000;
U_ref=0.1%
rho=1;
%
%----------------------
Re=500;
%----------------------

%save(['M_t22_all_1_4000.mat'],'x','xNS','M_1a', 'M_1b', 'M_1c', 'M_1d', 'M_1e', 'M_1F','M_1S', 'M_2a', 'M_2b', 'M_2c', 'M_2d', 'M_2e', 'M_2F','M_2S', 'M_3a', 'M_3b', 'M_3c', 'M_3D', 'M_3E', 'M_3F','M_3S', 'M_4a', 'M_4b', 'M_4c', 'M_3D', 'M_4e', 'M_4F','M_4S', 'M_00a', 'M_00b', 'M_00c', 'M_00d', 'M_00e', 'M_5F', 'M_5S', 'M_Single_a', 'M_Single_b', 'M_Single_c', 'M_6D', 'M_Single_e', 'M_6F', 'M_6S','M_NS');

% save(['M_t22_all_1_4000_Re100.mat'],'x','M_1d_100', 'M_1S_100', 'M_3D_100', 'M_4S_100', 'M_6D_100', 'M_6S_100');
% 
%%
tic; file_tag=['Singlea']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Single_a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Single_a=H_Single_a(1)-H_Single_a;

clear p* u* v* t22 x y ; toc;

%%
tic; file_tag=['Singleb']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Single_b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Single_b=H_Single_b(1)-H_Single_b;

clear p* u* v* t22 x y ; toc;

%%
tic; file_tag=['Singlec']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Single_c=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Single_c=H_Single_c(1)-H_Single_c;

clear p* u* v* t22 x y ; toc;

%%
tic; file_tag=['Singled']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Single_d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Single_d=H_Single_d(1)-H_Single_d;

clear p* u* v* t22 x y ; toc;

%%
tic; file_tag=['Singlee']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Single_e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Single_e=H_Single_e(1)-H_Single_e;
x_Single=x(1,:);

clear p* u* v* t22 x y ; toc;


%%
tic; file_tag=['1a']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_1a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_1a=H_1a(1)-H_1a;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['1b']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_1b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_1b=H_1b(1)-H_1b;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['1c']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_1c=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_1c=H_1c(1)-H_1c;

H_1cp=(mean((p_mean)))./(rho*U_ref^2);  
H_1cv=(mean((0.5*uu_mean.^2)))./(rho*U_ref^2);  


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['1d']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_1d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_1d=H_1d(1)-H_1d;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['1e']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_1e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_1e=H_1e(1)-H_1e;
x_1=x(1,:);

clear p* u* v* t22 x y ; toc;

%%
tic; file_tag=['2a']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2a=H_2a(1)-H_2a;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2b']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2b=H_2b(1)-H_2b;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2c']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2c=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2c=H_2c(1)-H_2c;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2d']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2d=H_2d(1)-H_2d;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2e']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2e=H_2e(1)-H_2e;
x_2=x(1,:);

clear p* u* v* t22 x y ; toc;





%%
tic; file_tag=['2a']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2a=H_2a(1)-H_2a;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2b']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2b=H_2b(1)-H_2b;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2c']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2c=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2c=H_2c(1)-H_2c;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2d']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2d=H_2d(1)-H_2d;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['2e']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_2e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_2e=H_2e(1)-H_2e;
x_2=x(1,:);

clear p* u* v* t22 x y ; toc;


%%
tic; file_tag=['3a']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_3a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_3a=H_3a(1)-H_3a;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['3b']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_3b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_3b=H_3b(1)-H_3b;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['3c']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_3c=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_3c=H_3c(1)-H_3c;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['3d']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_3d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_3d=H_3d(1)-H_3d;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['3e']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_3e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_3e=H_3e(1)-H_3e;
x_3=x(1,:);

clear p* u* v* t22 x y ; toc;


%%
tic; file_tag=['4a']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_4a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_4a=H_4a(1)-H_4a;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['4b']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_4b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_4b=H_4b(1)-H_4b;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['4c']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_4c=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_4c=H_4c(1)-H_4c;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['4d']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_4d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_4d=H_4d(1)-H_4d;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['4e']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_4e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_4e=H_4e(1)-H_4e;
x_4=x(1,:);

clear p* u* v* t22 x y ; toc;


%%
tic; file_tag=['0a']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_0a=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_0a=H_0a(1)-H_0a;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['0b']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_0b=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean


H_0b=(mean((p_mean(1:20,:))+(0.5*uu_mean(1:20,:).^2)))./(rho*U_ref^2);    %row wise mean

HL_0b=H_0b-H_0b(1);

H_0bp=(mean((p_mean)))./(rho*U_ref^2);
H_0bv=(mean((0.5*uu_mean.^2))./(rho*U_ref^2));


clear p* u* v* t22 x y ; toc;




clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['0d']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_0d=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_0d=H_0d(1)-H_0d;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['0e']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_0e=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_0e=H_0e(1)-H_0e;
x_0=x(1,:);

clear p* u* v* t22 x y ; toc;

%%
tic; file_tag=['Na']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Na=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Na=H_Na(1)-H_Na;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['Nb']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Nb=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Nb=H_Nb(1)-H_Nb;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['Nc']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Nc=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Nc=H_Nc(1)-H_Nc;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['Nd']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Nd=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Nd=H_Nd(1)-H_Nd;


clear p* u* v* t22 x y ; toc;
%%
tic; file_tag=['Ne']
load(['pt_',file_tag,'.mat'])
p_3D=cat(3,pp{t1:t2,:});  %3D Matrix data
uu_3D=cat(3,uu{t1:t2,:});  %3D Matrix data
p_mean=mean(p_3D,3);     %time 3D mean
uu_mean=mean(uu_3D,3);  %time 3D mean
H_Ne=(mean((p_mean)+(0.5*uu_mean.^2)))./(rho*U_ref^2);    %row wise mean
HL_Ne=H_Ne(1)-H_Ne;
x_0=x(1,:);

clear p* u* v* t22 x y ; toc;
%%
t1='4000'; t2='5000';
save(['HL_N_',t1,'_',t2,'.mat'],...
    'x_0','HL_0a', 'HL_0b', 'HL_0c', 'HL_0d', 'HL_0e',...
    'x_1','HL_1a', 'HL_1b', 'HL_1c', 'HL_1d', 'HL_1e',...
    'x_2','HL_2a', 'HL_2b', 'HL_2c', 'HL_2d', 'HL_2e',...
    'x_3','HL_3a', 'HL_3b', 'HL_3c', 'HL_3d', 'HL_3e',...
    'x_4','HL_4a', 'HL_4b', 'HL_4c', 'HL_4d', 'HL_4e',...
    'x_N','HL_Na', 'HL_Nb', 'HL_Nc', 'HL_Nd', 'HL_Ne',...
    'x_Single','HL_Single_a', 'HL_Single_b', 'HL_Single_c', 'HL_Single_d', 'HL_Single_e');
return;

save(['M_t22_',t1,'_',t2,'.mat'],...
    'x_1','M_1a', 'M_1b', 'M_1c', 'M_1d', 'M_1e',...
    'x_2','M_2a', 'M_2b', 'M_2c', 'M_2d', 'M_2e',...
    'x_3','M_3a', 'M_3b', 'M_3c', 'M_3d', 'M_3E',...
    'x_4','M_4a', 'M_4b', 'M_4c', 'M_4d', 'M_4e',...
    'x_Single','M_Single_a', 'M_Single_b', 'M_Single_c', 'M_Single_d', 'M_Single_e');
