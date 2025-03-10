% function main

clear all;
% close all;
clc;

%1
t1=4000; t2=5000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
%----------------------
%%
tic; file_tag=['1A']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p=pp;
p_3D_1A=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1A=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1A_mean=mean(p_3D_1A,3);     %time 3D mean
uu_1A_mean=mean(uu_3D_1A,3);  %time 3D mean
H_1A=(mean((p_1A_mean)+(0.5*uu_1A_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1A=H_1A(1)-H_1A;

clear p* var* uu*; toc;
%%
tic; file_tag=['1B']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_1B=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1B=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1B_mean=mean(p_3D_1B,3);     %time 3D mean
uu_1B_mean=mean(uu_3D_1B,3);  %time 3D mean
H_1B=(mean((p_1B_mean)+(0.5*uu_1B_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1B=H_1B(1)-H_1B;

clear p* H_* uu*; toc;
%%
tic; file_tag=['1C']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_1C=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1C=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1C_mean=mean(p_3D_1C,3);     %time 3D mean
uu_1C_mean=mean(uu_3D_1C,3);  %time 3D mean
H_1C=(mean((p_1C_mean)+(0.5*uu_1C_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1C=H_1C(1)-H_1C;

clear p* H_* uu*; toc;
%%
tic; file_tag=['1D']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_1D=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1D=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1D_mean=mean(p_3D_1D,3);     %time 3D mean
uu_1D_mean=mean(uu_3D_1D,3);  %time 3D mean
H_1D=(mean((p_1D_mean)+(0.5*uu_1D_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1D=H_1D(1)-H_1D;

clear p* H_* uu*; toc;
%%
tic; file_tag=['1E']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_1E=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1E=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1E_mean=mean(p_3D_1E,3);     %time 3D mean
uu_1E_mean=mean(uu_3D_1E,3);  %time 3D mean
H_1E=(mean((p_1E_mean)+(0.5*uu_1E_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1E=H_1E(1)-H_1E;

clear p* H_* uu*; toc;
%%
tic; file_tag=['1F']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_1F=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1F=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1F_mean=mean(p_3D_1F,3);     %time 3D mean
uu_1F_mean=mean(uu_3D_1F,3);  %time 3D mean
H_1F=(mean((p_1F_mean)+(0.5*uu_1F_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1F=H_1F(1)-H_1F;

clear p* H_* uu*; toc;

%%
tic; file_tag=['1S']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_1S=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_1S=cat(3,uu{t1:t2,:});  %3D Matrix data

p_1S_mean=mean(p_3D_1S,3);     %time 3D mean
uu_1S_mean=mean(uu_3D_1S,3);  %time 3D mean
H_1S=(mean((p_1S_mean)+(0.5*uu_1S_mean.^2)))./(10*0.1^2);    %row wise mean
HL_1S=H_1S(1)-H_1S;

clear p* H_* uu*; toc;

%%
tic; file_tag=['2A']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2A=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2A=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2A_mean=mean(p_3D_2A,3);     %time 3D mean
uu_2A_mean=mean(uu_3D_2A,3);  %time 3D mean
H_2A=(mean((p_2A_mean)+(0.5*uu_2A_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2A=H_2A(1)-H_2A;

clear p* H_* uu*; toc;

%%
tic; file_tag=['2B']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2B=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2B=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2B_mean=mean(p_3D_2B,3);     %time 3D mean
uu_2B_mean=mean(uu_3D_2B,3);  %time 3D mean
H_2B=(mean((p_2B_mean)+(0.5*uu_2B_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2B=H_2B(1)-H_2B;

clear p* H_* uu*; toc;
%%
tic; file_tag=['2C']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2C=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2C=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2C_mean=mean(p_3D_2C,3);     %time 3D mean
uu_2C_mean=mean(uu_3D_2C,3);  %time 3D mean
H_2C=(mean((p_2C_mean)+(0.5*uu_2C_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2C=H_2C(1)-H_2C;

clear p* H_* uu*; toc;
%%
tic; file_tag=['2D']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2D=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2D=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2D_mean=mean(p_3D_2D,3);     %time 3D mean
uu_2D_mean=mean(uu_3D_2D,3);  %time 3D mean
H_2D=(mean((p_2D_mean)+(0.5*uu_2D_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2D=H_2D(1)-H_2D;

clear p* H_* uu*; toc;
%%
tic; file_tag=['2E']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2E=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2E=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2E_mean=mean(p_3D_2E,3);     %time 3D mean
uu_2E_mean=mean(uu_3D_2E,3);  %time 3D mean
H_2E=(mean((p_2E_mean)+(0.5*uu_2E_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2E=H_2E(1)-H_2E;

clear p* H_* uu*; toc;
%%
tic; file_tag=['2F']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2F=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2F=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2F_mean=mean(p_3D_2F,3);     %time 3D mean
uu_2F_mean=mean(uu_3D_2F,3);  %time 3D mean
H_2F=(mean((p_2F_mean)+(0.5*uu_2F_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2F=H_2F(1)-H_2F;

clear p* H_* uu*; toc;%%
%%
tic; file_tag=['2S']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_2S=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_2S=cat(3,uu{t1:t2,:});  %3D Matrix data

p_2S_mean=mean(p_3D_2S,3);     %time 3D mean
uu_2S_mean=mean(uu_3D_2S,3);  %time 3D mean
H_2S=(mean((p_2S_mean)+(0.5*uu_2S_mean.^2)))./(10*0.1^2);    %row wise mean
HL_2S=H_2S(1)-H_2S;

clear p* H_* uu*; toc;



%%
tic; file_tag=['3A']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3A=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3A=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3A_mean=mean(p_3D_3A,3);     %time 3D mean
uu_3A_mean=mean(uu_3D_3A,3);  %time 3D mean
H_3A=(mean((p_3A_mean)+(0.5*uu_3A_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3A=H_3A(1)-H_3A;

clear p* H_* uu*; toc;


%%
tic; file_tag=['3B']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3B=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3B=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3B_mean=mean(p_3D_3B,3);     %time 3D mean
uu_3B_mean=mean(uu_3D_3B,3);  %time 3D mean
H_3B=(mean((p_3B_mean)+(0.5*uu_3B_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3B=H_3B(1)-H_3B;

clear p* H_* uu*; toc;
%%
tic; file_tag=['3C']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3C=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3C=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3C_mean=mean(p_3D_3C,3);     %time 3D mean
uu_3C_mean=mean(uu_3D_3C,3);  %time 3D mean
H_3C=(mean((p_3C_mean)+(0.5*uu_3C_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3C=H_3C(1)-H_3C;

clear p* H_* uu*; toc;
%%
tic; file_tag=['3D']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3D=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3D=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3D_mean=mean(p_3D_3D,3);     %time 3D mean
uu_3D_mean=mean(uu_3D_3D,3);  %time 3D mean
H_3D=(mean((p_3D_mean)+(0.5*uu_3D_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3D=H_3D(1)-H_3D;

clear p* H_* uu*; toc;
%%
tic; file_tag=['3E']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3E=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3E=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3E_mean=mean(p_3D_3E,3);     %time 3D mean
uu_3E_mean=mean(uu_3D_3E,3);  %time 3D mean
H_3E=(mean((p_3E_mean)+(0.5*uu_3E_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3E=H_3E(1)-H_3E;

clear p* H_* uu*; toc;
%%
tic; file_tag=['3F']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3F=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3F=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3F_mean=mean(p_3D_3F,3);     %time 3D mean
uu_3F_mean=mean(uu_3D_3F,3);  %time 3D mean
H_3F=(mean((p_3F_mean)+(0.5*uu_3F_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3F=H_3F(1)-H_3F;

clear p* H_* uu*; toc;
%%
tic; file_tag=['3S']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_3S=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_3S=cat(3,uu{t1:t2,:});  %3D Matrix data

p_3S_mean=mean(p_3D_3S,3);     %time 3D mean
uu_3S_mean=mean(uu_3D_3S,3);  %time 3D mean
H_3S=(mean((p_3S_mean)+(0.5*uu_3S_mean.^2)))./(10*0.1^2);    %row wise mean
HL_3S=H_3S(1)-H_3S;

clear p* H_* uu*; toc;




%%
tic; file_tag=['4A']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_4D_4A=cat(3,p{t1:t2,:});  %3D Matrix data
uu_4D_4A=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4A_mean=mean(p_4D_4A,3);     %time 3D mean
uu_4A_mean=mean(uu_4D_4A,3);  %time 3D mean
H_4A=(mean((p_4A_mean)+(0.5*uu_4A_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4A=H_4A(1)-H_4A;

clear p* H_* uu*; toc;


%%
tic; file_tag=['4B']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_4D_4B=cat(3,p{t1:t2,:});  %3D Matrix data
uu_4D_4B=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4B_mean=mean(p_4D_4B,3);     %time 3D mean
uu_4B_mean=mean(uu_4D_4B,3);  %time 3D mean
H_4B=(mean((p_4B_mean)+(0.5*uu_4B_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4B=H_4B(1)-H_4B;

clear p* H_* uu*; toc;
%%
tic; file_tag=['4C']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_4D_4C=cat(3,p{t1:t2,:});  %3D Matrix data
uu_4D_4C=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4C_mean=mean(p_4D_4C,3);     %time 3D mean
uu_4C_mean=mean(uu_4D_4C,3);  %time 3D mean
H_4C=(mean((p_4C_mean)+(0.5*uu_4C_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4C=H_4C(1)-H_4C;

clear p* H_* uu*; toc;
%%
tic; file_tag=['4D']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_4D_4D=cat(3,p{t1:t2,:});  %3D Matrix data
uu_4D_4D=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4D_mean=mean(p_4D_4D,3);     %time 3D mean
uu_4D_mean=mean(uu_4D_4D,3);  %time 3D mean
H_4D=(mean((p_4D_mean)+(0.5*uu_4D_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4D=H_4D(1)-H_4D;

clear p* H_* uu*; toc;
%%
tic; file_tag=['4E']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_4D_4E=cat(3,p{t1:t2,:});  %3D Matrix data
uu_4D_4E=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4E_mean=mean(p_4D_4E,3);     %time 3D mean
uu_4E_mean=mean(uu_4D_4E,3);  %time 3D mean
H_4E=(mean((p_4E_mean)+(0.5*uu_4E_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4E=H_4E(1)-H_4E;

clear p* H_* uu*; toc;
%%
tic; file_tag=['4F']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_4D_4F=cat(3,p{t1:t2,:});  %3D Matrix data
uu_4D_4F=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4F_mean=mean(p_4D_4F,3);     %time 3D mean
uu_4F_mean=mean(uu_4D_4F,3);  %time 3D mean
H_4F=(mean((p_4F_mean)+(0.5*uu_4F_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4F=H_4F(1)-H_4F;

clear p* H_* uu*; toc;
%%
%%
tic; file_tag=['4S']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_4S=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_4S=cat(3,uu{t1:t2,:});  %3D Matrix data

p_4S_mean=mean(p_3D_4S,3);     %time 3D mean
uu_4S_mean=mean(uu_3D_4S,3);  %time 3D mean
H_4S=(mean((p_4S_mean)+(0.5*uu_4S_mean.^2)))./(10*0.1^2);    %row wise mean
HL_4S=H_4S(1)-H_4S;

clear p* H_* uu*; toc;

%%
tic; file_tag=['5A']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_5D_5A=cat(3,p{t1:t2,:});  %3D Matrix data
uu_5D_5A=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5A_mean=mean(p_5D_5A,3);     %time 3D mean
uu_5A_mean=mean(uu_5D_5A,3);  %time 3D mean
H_5A=(mean((p_5A_mean)+(0.5*uu_5A_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5A=H_5A(1)-H_5A;

clear p* H_* uu*; toc;


%%
tic; file_tag=['5B']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_5D_5B=cat(3,p{t1:t2,:});  %3D Matrix data
uu_5D_5B=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5B_mean=mean(p_5D_5B,3);     %time 3D mean
uu_5B_mean=mean(uu_5D_5B,3);  %time 3D mean
H_5B=(mean((p_5B_mean)+(0.5*uu_5B_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5B=H_5B(1)-H_5B;

clear p* H_* uu*; toc;
%%
tic; file_tag=['5C']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_5D_5C=cat(3,p{t1:t2,:});  %3D Matrix data
uu_5D_5C=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5C_mean=mean(p_5D_5C,3);     %time 3D mean
uu_5C_mean=mean(uu_5D_5C,3);  %time 3D mean
H_5C=(mean((p_5C_mean)+(0.5*uu_5C_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5C=H_5C(1)-H_5C;

clear p* H_* uu*; toc;
%%
tic; file_tag=['5D']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_5D_5D=cat(3,p{t1:t2,:});  %3D Matrix data
uu_5D_5D=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5D_mean=mean(p_5D_5D,3);     %time 3D mean
uu_5D_mean=mean(uu_5D_5D,3);  %time 3D mean
H_5D=(mean((p_5D_mean)+(0.5*uu_5D_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5D=H_5D(1)-H_5D;

clear p* H_* uu*; toc;
%%
tic; file_tag=['5E']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_5D_5E=cat(3,p{t1:t2,:});  %3D Matrix data
uu_5D_5E=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5E_mean=mean(p_5D_5E,3);     %time 3D mean
uu_5E_mean=mean(uu_5D_5E,3);  %time 3D mean
H_5E=(mean((p_5E_mean)+(0.5*uu_5E_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5E=H_5E(1)-H_5E;

clear p* H_* uu*; toc;
%%
tic; file_tag=['5F']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_5D_5F=cat(3,p{t1:t2,:});  %3D Matrix data
uu_5D_5F=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5F_mean=mean(p_5D_5F,3);     %time 3D mean
uu_5F_mean=mean(uu_5D_5F,3);  %time 3D mean
H_5F=(mean((p_5F_mean)+(0.5*uu_5F_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5F=H_5F(1)-H_5F;

clear p* H_* uu*; toc;

%%
tic; file_tag=['5S']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_3D_5S=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_5S=cat(3,uu{t1:t2,:});  %3D Matrix data

p_5S_mean=mean(p_3D_5S,3);     %time 3D mean
uu_5S_mean=mean(uu_3D_5S,3);  %time 3D mean
H_5S=(mean((p_5S_mean)+(0.5*uu_5S_mean.^2)))./(10*0.1^2);    %row wise mean
HL_5S=H_5S(1)-H_5S;

clear p* H_* uu*; toc;
%%
tic; file_tag=['6A']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_6D_6A=cat(3,p{t1:t2,:});  %3D Matrix data
uu_6D_6A=cat(3,uu{t1:t2,:});  %3D Matrix data

p_6A_mean=mean(p_6D_6A,3);     %time 3D mean
uu_6A_mean=mean(uu_6D_6A,3);  %time 3D mean
H_6A=(mean((p_6A_mean)+(0.5*uu_6A_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6A=H_6A(1)-H_6A;

clear p* H_* uu*; toc;


%%
tic; file_tag=['6B']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_6D_6B=cat(3,p{t1:t2,:});  %3D Matrix data
uu_6D_6B=cat(3,uu{t1:t2,:});  %3D Matrix data

p_6B_mean=mean(p_6D_6B,3);     %time 3D mean
uu_6B_mean=mean(uu_6D_6B,3);  %time 3D mean
H_6B=(mean((p_6B_mean)+(0.5*uu_6B_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6B=H_6B(1)-H_6B;

clear p* H_* uu*; toc;
%%
tic; file_tag=['6C']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_6D_6C=cat(3,p{t1:t2,:});  %3D Matrix data
uu_6D_6C=cat(3,uu{t1:t2,:});  %3D Matrix data

p_6C_mean=mean(p_6D_6C,3);     %time 3D mean
uu_6C_mean=mean(uu_6D_6C,3);  %time 3D mean
H_6C=(mean((p_6C_mean)+(0.5*uu_6C_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6C=H_6C(1)-H_6C;

clear p* H_* uu*; toc;
%%
tic; file_tag=['6D']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_6D_6D=cat(3,p{t1:t2,:});  %3D Matrix data
uu_6D_6D=cat(3,uu{t1:t2,:});  %3D Matrix data

p_6D_mean=mean(p_6D_6D,3);     %time 3D mean
uu_6D_mean=mean(uu_6D_6D,3);  %time 3D mean
H_6D=(mean((p_6D_mean)+(0.5*uu_6D_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6D=H_6D(1)-H_6D;

clear p* H_* uu*; toc;
%%
tic; file_tag=['6E']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_6D_6E=cat(3,p{t1:t2,:});  %3D Matrix data
uu_6D_6E=cat(3,uu{t1:t2,:});  %3D Matrix data

p_6E_mean=mean(p_6D_6E,3);     %time 3D mean
uu_6E_mean=mean(uu_6D_6E,3);  %time 3D mean
H_6E=(mean((p_6E_mean)+(0.5*uu_6E_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6E=H_6E(1)-H_6E;

clear p* H_* uu*; toc;
%%
tic; file_tag=['6F']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
p_6D_6F=cat(3,p{t1:t2,:});  %3D Matrix data
uu_6D_6F=cat(3,uu{t1:t2,:});  %3D Matrix data

p_6F_mean=mean(p_6D_6F,3);     %time 3D mean
uu_6F_mean=mean(uu_6D_6F,3);  
%time 3D mean
H_6F=(mean((p_6F_mean)+(0.5*uu_6F_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6F=H_6F(1)-H_6F;

clear p* H_* uu*; toc;

%%
tic; file_tag=['6S']
load(['p_',file_tag,'2.mat'])
load(['/media/magcyan/conti1_4tb_1/Flow_uv_data/uv_',file_tag,'.mat'])
load(['/media/magcyan/ssdT7/conti1_4tb_11/Flow_uv_data/uv_NF2_ico_of10_140_150.mat'])


p_3D_6S=cat(3,p{t1:t2,:});  %3D Matrix data
uu_3D_6S=cat(3,uu{t1:t2,:});  %3D Matrix data
p_6S_mean=mean(p_3D_6S,3);     %time 3D mean
uu_6S_mean=mean(uu_3D_6S,3);  %time 3D mean
H_6S=(mean((p_6S_mean)+(0.5*uu_6S_mean.^2)))./(10*0.1^2);    %row wise mean
 % H_6S=(sum((p_6S_mean)+(0.5*uu_6S_mean.^2)))./(10*0.1^2);    %row wise mean
HL_6S=H_6S(1)-H_6S;

clear p* H_* uu*; toc;
t1=1; t2=200;
%%
x=x(1,:);
save(['HL_all_',t1,'_',t2,'.mat'],'x','HL_1A', 'HL_1B', 'HL_1C', 'HL_1D', 'HL_1E', 'HL_1F','HL_1S', 'HL_2A', 'HL_2B', 'HL_2C', 'HL_2D', 'HL_2E', 'HL_2F','HL_2S', 'HL_3A', 'HL_3B', 'HL_3C', 'HL_3D', 'HL_3E', 'HL_3F','HL_3S', 'HL_4A', 'HL_4B', 'HL_4C', 'HL_4D', 'HL_4E', 'HL_4F','HL_4S', 'HL_5A', 'HL_5B', 'HL_5C', 'HL_5D', 'HL_5E', 'HL_5F','HL_5S', 'HL_6A', 'HL_6B', 'HL_6C', 'HL_6D', 'HL_6E', 'HL_6F','HL_6S');