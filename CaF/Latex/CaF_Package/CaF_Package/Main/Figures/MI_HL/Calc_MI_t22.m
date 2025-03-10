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

%save(['M_t22_all_1_4000.mat'],'x','xNS','M_1a', 'M_1b', 'M_1c', 'M_1d', 'M_1e', 'M_1F','M_1S', 'M_2a', 'M_2b', 'M_2c', 'M_2d', 'M_2e', 'M_2F','M_2S', 'M_3a', 'M_3b', 'M_3c', 'M_3D', 'M_3E', 'M_3F','M_3S', 'M_4a', 'M_4b', 'M_4c', 'M_3D', 'M_4e', 'M_4F','M_4S', 'M_00a', 'M_00b', 'M_00c', 'M_00d', 'M_00e', 'M_5F', 'M_5S', 'M_Single_a', 'M_Single_b', 'M_Single_c', 'M_6D', 'M_Single_e', 'M_6F', 'M_6S','M_NS');

% save(['M_t22_all_1_4000_Re100.mat'],'x','M_1d_100', 'M_1S_100', 'M_3D_100', 'M_4S_100', 'M_6D_100', 'M_6S_100');
% 

% %%
tic; file_tag=['Singlea']
load(['pt2_',file_tag,'.mat'])
t22_3D_Single_a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_Single_a_mean=mean(t22_3D_Single_a,3);     %
var_Single_a=sqrt(mean((t22_Single_a_mean-0.5).^2));    %row wise mean
M_Single_a=1-sqrt((var_Single_a.^2)./(max(var_Single_a)^2));      clear t22* var*; toc;
x_Single=x(1,:);
%%
tic; file_tag=['Singleb']
load(['pt2_',file_tag,'.mat'])
t22_3D_Single_b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_Single_b_mean=mean(t22_3D_Single_b,3);     %
var_Single_b=sqrt(mean((t22_Single_b_mean-0.5).^2));    %row wise mean
M_Single_b=1-sqrt((var_Single_b.^2)./(max(var_Single_b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['Singlec']
load(['pt2_',file_tag,'.mat'])
t22_3D_Single_c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_Single_c_mean=mean(t22_3D_Single_c,3);     %
var_Single_c=sqrt(mean((t22_Single_c_mean-0.5).^2));    %row wise mean
M_Single_c=1-sqrt((var_Single_c.^2)./(max(var_Single_c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['Singled']
load(['pt2_',file_tag,'.mat'])
t22_3D_Single_d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_Single_d_mean=mean(t22_3D_Single_d,3);     %
var_Single_d=sqrt(mean((t22_Single_d_mean-0.5).^2));    %row wise mean
M_Single_d=1-sqrt((var_Single_d.^2)./(max(var_Single_d)^2));      clear t22* var*; toc;
% %%
tic; file_tag=['Singlee']
load(['pt2_',file_tag,'.mat'])
t22_3D_Single_e=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_Single_e_mean=mean(t22_3D_Single_e,3);     %
var_Single_e=sqrt(mean((t22_Single_e_mean-0.5).^2));    %row wise mean
M_Single_e=1-sqrt((var_Single_e.^2)./(max(var_Single_e)^2));      clear t22* var*; toc;

%%
tic; file_tag=['1a']
load(['pt2_',file_tag,'.mat'])
t22_3D_1a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1a_mean=mean(t22_3D_1a,3);     %
var_1a=sqrt(mean((t22_1a_mean-0.5).^2));    %row wise mean
M_1a=1-sqrt((var_1a.^2)./(max(var_1a)^2));      clear t22* var*; toc;
x_1=x(1,:);
%%
tic; file_tag=['1b']
load(['pt2_',file_tag,'.mat'])
t22_3D_1b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1b_mean=mean(t22_3D_1b,3);     %
var_1b=sqrt(mean((t22_1b_mean-0.5).^2));    %row wise mean
M_1b=1-sqrt((var_1b.^2)./(max(var_1b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['1c']
load(['pt2_',file_tag,'.mat'])
t22_3D_1c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1c_mean=mean(t22_3D_1c,3);     %
var_1c=sqrt(mean((t22_1c_mean-0.5).^2));    %row wise mean
M_1c=1-sqrt((var_1c.^2)./(max(var_1c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['1d']
load(['pt2_',file_tag,'.mat'])
t22_3D_1d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1d_mean=mean(t22_3D_1d,3);     %
var_1d=sqrt(mean((t22_1d_mean-0.5).^2));    %row wise mean
M_1d=1-sqrt((var_1d.^2)./(max(var_1d)^2));      clear t22* var*; toc;
%%
tic; file_tag=['1e']
load(['pt2_',file_tag,'.mat'])
t22_3D_1e=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_1e_mean=mean(t22_3D_1e,3);     %
var_1e=sqrt(mean((t22_1e_mean-0.5).^2));    %row wise mean
M_1e=1-sqrt((var_1e.^2)./(max(var_1e)^2));      clear t22* var*; toc;
% %%


%%
tic; file_tag=['2a']
load(['pt2_',file_tag,'.mat'])
t22_3D_2a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_2a_mean=mean(t22_3D_2a,3);     %
var_2a=sqrt(mean((t22_2a_mean-0.5).^2));    %row wise mean
M_2a=1-sqrt((var_2a.^2)./(max(var_2a)^2));      clear t22* var*; toc;
x_2=x(1,:);
%%
tic; file_tag=['2b']
load(['pt2_',file_tag,'.mat'])
t22_3D_2b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_2b_mean=mean(t22_3D_2b,3);     %
var_2b=sqrt(mean((t22_2b_mean-0.5).^2));    %row wise mean
M_2b=1-sqrt((var_2b.^2)./(max(var_2b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['2c']
load(['pt2_',file_tag,'.mat'])
t22_3D_2c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_2c_mean=mean(t22_3D_2c,3);     %
var_2c=sqrt(mean((t22_2c_mean-0.5).^2));    %row wise mean
M_2c=1-sqrt((var_2c.^2)./(max(var_2c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['2d']
load(['pt2_',file_tag,'.mat'])
t22_3D_2d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_2d_mean=mean(t22_3D_2d,3);     %
var_2d=sqrt(mean((t22_2d_mean-0.5).^2));    %row wise mean
M_2d=1-sqrt((var_2d.^2)./(max(var_2d)^2));      clear t22* var*; toc;
%%
tic; file_tag=['2e']
load(['pt2_',file_tag,'.mat'])
t22_3D_2e=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_2e_mean=mean(t22_3D_2e,3);     %
var_2e=sqrt(mean((t22_2e_mean-0.5).^2));    %row wise mean
M_2e=1-sqrt((var_2e.^2)./(max(var_2e)^2));      clear t22* var*; toc;
%%
%


%%
tic; file_tag=['3a']
load(['pt2_',file_tag,'.mat'])
t22_3D_3a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3a_mean=mean(t22_3D_3a,3);     %
var_3a=sqrt(mean((t22_3a_mean-0.5).^2));    %row wise mean
M_3a=1-sqrt((var_3a.^2)./(max(var_3a)^2));      clear t22* var*; toc;
x_3=x(1,:);
%%
tic; file_tag=['3b']
load(['pt2_',file_tag,'.mat'])
t22_3D_3b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3b_mean=mean(t22_3D_3b,3);     %
var_3b=sqrt(mean((t22_3b_mean-0.5).^2));    %row wise mean
M_3b=1-sqrt((var_3b.^2)./(max(var_3b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['3c']
load(['pt2_',file_tag,'.mat'])
t22_3D_3c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3c_mean=mean(t22_3D_3c,3);     %
var_3c=sqrt(mean((t22_3c_mean-0.5).^2));    %row wise mean
M_3c=1-sqrt((var_3c.^2)./(max(var_3c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['3d']
load(['pt2_',file_tag,'.mat'])
t22_3D_3d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3D_mean=mean(t22_3D_3d,3);     %
var_3d=sqrt(mean((t22_3D_mean-0.5).^2));    %row wise mean
M_3d=1-sqrt((var_3d.^2)./(max(var_3d)^2));      clear t22* var*; toc;
%%
tic; file_tag=['3e']
load(['pt2_',file_tag,'.mat'])
t22_3D_3E=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3E_mean=mean(t22_3D_3E,3);     %
var_3E=sqrt(mean((t22_3E_mean-0.5).^2));    %row wise mean
M_3e=1-sqrt((var_3E.^2)./(max(var_3E)^2));      clear t22* var*; toc;
%%

%
tic; file_tag=['4a']
load(['pt2_',file_tag,'.mat'])
t22_3D_4a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_4a_mean=mean(t22_3D_4a,3);     %
var_4a=sqrt(mean((t22_4a_mean-0.5).^2));    %row wise mean
M_4a=1-sqrt((var_4a.^2)./(max(var_4a)^2));      clear t22* var*; toc;
x_4=x(1,:);
%%
tic; file_tag=['4b']
load(['pt2_',file_tag,'.mat'])
t22_3D_4b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_4b_mean=mean(t22_3D_4b,3);     %
var_4b=sqrt(mean((t22_4b_mean-0.5).^2));    %row wise mean
M_4b=1-sqrt((var_4b.^2)./(max(var_4b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['4c']
load(['pt2_',file_tag,'.mat'])
t22_3D_4c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_4c_mean=mean(t22_3D_4c,3);     %
var_4c=sqrt(mean((t22_4c_mean-0.5).^2));    %row wise mean
M_4c=1-sqrt((var_4c.^2)./(max(var_4c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['4d']
load(['pt2_',file_tag,'.mat'])
t22_3D_4d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_4d_mean=mean(t22_3D_4d,3);     %
var_4d=sqrt(mean((t22_4d_mean-0.5).^2));    %row wise mean
M_4d=1-sqrt((var_4d.^2)./(max(var_4d)^2));      clear t22* var*; toc;
%%
tic; file_tag=['4e']
load(['pt2_',file_tag,'.mat'])
t22_3D_4e=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_4e_mean=mean(t22_3D_4e,3);     %
var_4e=sqrt(mean((t22_4e_mean-0.5).^2));    %row wise mean
M_4e=1-sqrt((var_4e.^2)./(max(var_4e)^2));      clear t22* var*; toc;
% %%

%%
tic; file_tag=['0a']
load(['pt2_',file_tag,'.mat'])
t22_3D_00a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_00a_mean=mean(t22_3D_00a,3);     %
var_00a=sqrt(mean((t22_00a_mean-0.5).^2));    %row wise mean
M_0a=1-sqrt((var_00a.^2)./(max(var_00a)^2));      clear t22* var*; toc;
x_0=x(1,:);
%%
tic; file_tag=['0b']
load(['pt2_',file_tag,'.mat'])
t22_3D_00b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_00b_mean=mean(t22_3D_00b,3);     %
var_00b=sqrt(mean((t22_00b_mean-0.5).^2));    %row wise mean
M_0b=1-sqrt((var_00b.^2)./(max(var_00b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['0c']
load(['pt2_',file_tag,'.mat'])
t22_3D_00c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_00c_mean=mean(t22_3D_00c,3);     %
var_00c=sqrt(mean((t22_00c_mean-0.5).^2));    %row wise mean
M_0c=1-sqrt((var_00c.^2)./(max(var_00c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['0d']
load(['pt2_',file_tag,'.mat'])
t22_3D_00d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_00d_mean=mean(t22_3D_00d,3);     %
var_00d=sqrt(mean((t22_00d_mean-0.5).^2));    %row wise mean
M_0d=1-sqrt((var_00d.^2)./(max(var_00d)^2));      clear t22* var*; toc;
%%
tic; file_tag=['0e']
load(['pt2_',file_tag,'.mat'])
t22_3D_00e=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_00e_mean=mean(t22_3D_00e,3);     %
var_00e=sqrt(mean((t22_00e_mean-0.5).^2));    %row wise mean
M_0e=1-sqrt((var_00e.^2)./(max(var_00e)^2));      clear t22* var*; toc;
% %%
%%
%%
tic; file_tag=['Na']
load(['pt2_',file_tag,'.mat'])
t22_3D_3a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3a_mean=mean(t22_3D_3a,3);     %
var_3a=sqrt(mean((t22_3a_mean-0.5).^2));    %row wise mean
M_Na=1-sqrt((var_3a.^2)./(max(var_3a)^2));      clear t22* var*; toc;
x_N=x(1,:);
%%
tic; file_tag=['Nb']
load(['pt2_',file_tag,'.mat'])
t22_3D_3b=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3b_mean=mean(t22_3D_3b,3);     %
var_3b=sqrt(mean((t22_3b_mean-0.5).^2));    %row wise mean
M_Nb=1-sqrt((var_3b.^2)./(max(var_3b)^2));      clear t22* var*; toc;
%%
tic; file_tag=['Nc']
load(['pt2_',file_tag,'.mat'])
t22_3D_3c=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3c_mean=mean(t22_3D_3c,3);     %
var_3c=sqrt(mean((t22_3c_mean-0.5).^2));    %row wise mean
M_Nc=1-sqrt((var_3c.^2)./(max(var_3c)^2));      clear t22* var*; toc;
%%
tic; file_tag=['Nd']
load(['pt2_',file_tag,'.mat'])
t22_3D_3d=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3D_mean=mean(t22_3D_3d,3);     %
var_3d=sqrt(mean((t22_3D_mean-0.5).^2));    %row wise mean
M_Nd=1-sqrt((var_3d.^2)./(max(var_3d)^2));      clear t22* var*; toc;
%%
tic; file_tag=['Ne']
load(['pt2_',file_tag,'.mat'])
t22_3D_3E=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_3E_mean=mean(t22_3D_3E,3);     %
var_3E=sqrt(mean((t22_3E_mean-0.5).^2));    %row wise mean
M_Ne=1-sqrt((var_3E.^2)./(max(var_3E)^2));      clear t22* var*; toc;
%%

t1='4000'; t2='5000';
save(['M_t22_all_N',t1,'_',t2,'.mat'],...
    'x_0','M_0a', 'M_0b', 'M_0c', 'M_0d', 'M_0e',...
    'x_1','M_1a', 'M_1b', 'M_1c', 'M_1d', 'M_1e',...
    'x_2','M_2a', 'M_2b', 'M_2c', 'M_2d', 'M_2e',...
    'x_3','M_3a', 'M_3b', 'M_3c', 'M_3d', 'M_3e',...
    'x_4','M_4a', 'M_4b', 'M_4c', 'M_4d', 'M_4e',...
    'x_Single','M_Single_a', 'M_Single_b', 'M_Single_c', 'M_Single_d', 'M_Single_e',...
    'x_N','M_Na', 'M_Nb', 'M_Nc', 'M_Nd', 'M_Ne');
return;

save(['M_t22_',t1,'_',t2,'.mat'],...
    'x_1','M_1a', 'M_1b', 'M_1c', 'M_1d', 'M_1e',...
    'x_2','M_2a', 'M_2b', 'M_2c', 'M_2d', 'M_2e',...
    'x_3','M_3a', 'M_3b', 'M_3c', 'M_3d', 'M_3E',...
    'x_4','M_4a', 'M_4b', 'M_4c', 'M_4d', 'M_4e',...
    'x_Single','M_Single_a', 'M_Single_b', 'M_Single_c', 'M_Single_d', 'M_Single_e');
