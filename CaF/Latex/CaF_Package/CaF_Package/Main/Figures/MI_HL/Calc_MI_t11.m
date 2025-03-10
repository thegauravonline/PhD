% function main

clear all;
% close all;
clc;

%1
t1=3000; t2=4000;
Uinf_0=0.1;% Uinf=0.4 for d/h=0 and Uinf=0.8 for d/h>0
%
%----------------------
Re=500;
%----------------------

%save(['M_t11_all_1_4000.mat'],'x','xNS','M_1A', 'M_1B', 'M_1C', 'M_1D', 'M_1E', 'M_1F','M_1S', 'M_2A', 'M_2B', 'M_2C', 'M_2D', 'M_2E', 'M_2F','M_2S', 'M_3A', 'M_3B', 'M_3C', 'M_3D', 'M_3E', 'M_3F','M_3S', 'M_4A', 'M_4B', 'M_4C', 'M_4D', 'M_4E', 'M_4F','M_4S', 'M_5A', 'M_5B', 'M_5C', 'M_5D', 'M_5E', 'M_5F', 'M_5S', 'M_6A', 'M_6B', 'M_6C', 'M_6D', 'M_6E', 'M_6F', 'M_6S','M_NS');

% save(['M_t11_all_1_4000_Re100.mat'],'x','M_1D_100', 'M_1S_100', 'M_4D_100', 'M_4S_100', 'M_6D_100', 'M_6S_100');

% tic; file_tag=['4D']
% load(['t_',file_tag,'_100.mat'])
% t11_3D_1A=cat(3,t11{t1:t2,:});  %3D Matrix data
% t11_1A_mean=mean(t11_3D_1A,3);     %
% var_1A=sqrt(mean((t11_1A_mean-0.5).^2));    %row wise mean
% M_4D_100=1-sqrt((var_1A.^2)./(max(var_1A)^2));      clear t11* var*; toc;

tic; file_tag=['NFS']
load(['t_',file_tag,'.mat'])
t11_3D_1A=cat(3,t11{t1:t2,:});              %3D Matrix data
t11_1A_mean=mean(t11_3D_1A,3);              %
var_1A=sqrt(mean((t11_1A_mean-0.5).^2));    %row wise mean
M_1A=1-sqrt((var_1A.^2)./(max(var_1A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1A']
load(['t_',file_tag,'.mat'])
t11_3D_1A=cat(3,t11{t1:t2,:});              %3D Matrix data
t11_1A_mean=mean(t11_3D_1A,3);              %
var_1A=sqrt(mean((t11_1A_mean-0.5).^2));    %row wise mean
M_1A=1-sqrt((var_1A.^2)./(max(var_1A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1B']
load(['t_',file_tag,'.mat'])
t11_3D_1B=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1B_mean=mean(t11_3D_1B,3);     %
var_1B=sqrt(mean((t11_1B_mean-0.5).^2));    %row wise mean
M_1B=1-sqrt((var_1B.^2)./(max(var_1B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1C']
load(['t_',file_tag,'.mat'])
t11_3D_1C=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1C_mean=mean(t11_3D_1C,3);     %
var_1C=sqrt(mean((t11_1C_mean-0.5).^2));    %row wise mean
M_1C=1-sqrt((var_1C.^2)./(max(var_1C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1D']
load(['t_',file_tag,'.mat'])
t11_3D_1D=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1D_mean=mean(t11_3D_1D,3);     %
var_1D=sqrt(mean((t11_1D_mean-0.5).^2));    %row wise mean
M_1D=1-sqrt((var_1D.^2)./(max(var_1D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1E']
load(['t_',file_tag,'.mat'])
t11_3D_1E=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1E_mean=mean(t11_3D_1E,3);     %
var_1E=sqrt(mean((t11_1E_mean-0.5).^2));    %row wise mean
M_1E=1-sqrt((var_1E.^2)./(max(var_1E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1F']
load(['t_',file_tag,'.mat'])
t11_3D_1F=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1F_mean=mean(t11_3D_1F,3);     %
var_1F=sqrt(mean((t11_1F_mean-0.5).^2));    %row wise mean
M_1F=1-sqrt((var_1F.^2)./(max(var_1F)^2));      clear t11* var*; toc;
%%
tic; file_tag=['1S']
load(['t_',file_tag,'.mat'])
t11_3D_1S=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_1S_mean=mean(t11_3D_1S,3);     %
var_1S=sqrt(mean((t11_1S_mean-0.5).^2));    %row wise mean
M_1S=1-sqrt((var_1S.^2)./(max(var_1S)^2));      clear t11* var*; toc;
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
tic; file_tag=['2S']
load(['t_',file_tag,'.mat'])
t11_3D_2S=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_2S_mean=mean(t11_3D_2S,3);     %
var_2S=sqrt(mean((t11_2S_mean-0.5).^2));    %row wise mean
M_2S=1-sqrt((var_2S.^2)./(max(var_2S)^2));      clear t11* var*; toc;
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
tic; file_tag=['3S']
load(['t_',file_tag,'.mat'])
t11_3D_3S=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_3S_mean=mean(t11_3D_3S,3);     %
var_3S=sqrt(mean((t11_3S_mean-0.5).^2));    %row wise mean
M_3S=1-sqrt((var_3S.^2)./(max(var_3S)^2));      clear t11* var*; toc;
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
tic; file_tag=['4S']
load(['t_',file_tag,'.mat'])
t11_4D_4S=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4S_mean=mean(t11_4D_4S,3);     %
var_4S=sqrt(mean((t11_4S_mean-0.5).^2));    %row wise mean
M_4S=1-sqrt((var_4S.^2)./(max(var_4S)^2));      clear t11* var*; toc;

%%
tic; file_tag=['4p1S']
load(['t_',file_tag,'.mat'])
t11_4D_4p1S=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4p1S_mean=mean(t11_4D_4p1S,3);     %
var_4p1S=sqrt(mean((t11_4p1S_mean-0.5).^2));    %row wise mean
M_4p1S=1-sqrt((var_4p1S.^2)./(max(var_4p1S)^2));      clear t11* var*; toc;

%%
tic; file_tag=['5A']
load(['t_',file_tag,'.mat'])
t11_3D_5A=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5A_mean=mean(t11_3D_5A,3);     %
var_5A=sqrt(mean((t11_5A_mean-0.5).^2));    %row wise mean
M_5A=1-sqrt((var_5A.^2)./(max(var_5A)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5B']
load(['t_',file_tag,'.mat'])
t11_3D_5B=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5B_mean=mean(t11_3D_5B,3);     %
var_5B=sqrt(mean((t11_5B_mean-0.5).^2));    %row wise mean
M_5B=1-sqrt((var_5B.^2)./(max(var_5B)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5C']
load(['t_',file_tag,'.mat'])
t11_3D_5C=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5C_mean=mean(t11_3D_5C,3);     %
var_5C=sqrt(mean((t11_5C_mean-0.5).^2));    %row wise mean
M_5C=1-sqrt((var_5C.^2)./(max(var_5C)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5D']
load(['t_',file_tag,'.mat'])
t11_3D_5D=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5D_mean=mean(t11_3D_5D,3);     %
var_5D=sqrt(mean((t11_5D_mean-0.5).^2));    %row wise mean
M_5D=1-sqrt((var_5D.^2)./(max(var_5D)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5E']
load(['t_',file_tag,'.mat'])
t11_3D_5E=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5E_mean=mean(t11_3D_5E,3);     %
var_5E=sqrt(mean((t11_5E_mean-0.5).^2));    %row wise mean
M_5E=1-sqrt((var_5E.^2)./(max(var_5E)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5F']
load(['t_',file_tag,'.mat'])
t11_3D_5F=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5F_mean=mean(t11_3D_5F,3);     %
var_5F=sqrt(mean((t11_5F_mean-0.5).^2));    %row wise mean
M_5F=1-sqrt((var_5F.^2)./(max(var_5F)^2));      clear t11* var*; toc;
%%
tic; file_tag=['5S']
load(['t_',file_tag,'.mat'])
t11_3D_5S=cat(3,t11{t1:t2,:});  %3D Matrix data
t11_5S_mean=mean(t11_3D_5S,3);     %
var_5S=sqrt(mean((t11_5S_mean-0.5).^2));    %row wise mean
M_5S=1-sqrt((var_5S.^2)./(max(var_5S)^2));      clear t11* var*; toc;

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
t11_6D_6S=cat(3,t11{t1:t2,:}); %6D Matrix data
t11_6S_mean=mean(t11_6D_6S,3); %
var_6S=sqrt(mean((t11_6S_mean-0.5).^2));    %row wise mean
M_6S=1-sqrt((var_6S.^2)./(max(var_6S)^2));
% clear t11* var*; toc;

%%
tic; file_tag=['NS']
load(['t_',file_tag,'.mat'])
t11_6D_6S=cat(3,t11{t1:t2,:}); %6D Matrix data
t11_6S_mean=mean(t11_6D_6S,3); %
var_6S=sqrt(mean((t11_6S_mean-0.5).^2));    %row wise mean
M_NS_ico=1-sqrt((var_6S.^2)./(max(var_6S)^2));
clear t11* var*; toc;
%%
x=x(1,:);
save(['M_t11_all_',t1,'_',t2,'_ico.mat'],'x','x_NFS','x_ico','M_1A', 'M_1B', 'M_1C', 'M_1D', 'M_1E', 'M_1F','M_1S',...
    'M_2A', 'M_2B', 'M_2C', 'M_2D', 'M_2E', 'M_2F','M_2S', 'M_3A', 'M_3B', 'M_3C', 'M_3D', 'M_3E', 'M_3F','M_3S',...
    'M_4A', 'M_4B', 'M_4C', 'M_4D', 'M_4E', 'M_4F','M_4S', 'M_5A', 'M_5B', 'M_5C', 'M_5D', 'M_5E', 'M_5F', 'M_5S',...
    'M_6A', 'M_6B', 'M_6C', 'M_6D', 'M_6E', 'M_6F', 'M_6S','M_NS', 'M_NFS','M_NFS_9k_10k','M_NFS_uniform','M_NS','M_NS_ico');


save(['M_t11_all_3000_4000_ico.mat'],'x','x_NFS','x_ico','M_1A', 'M_1B', 'M_1C', 'M_1D', 'M_1E', 'M_1F','M_1S',...
    'M_2A', 'M_2B', 'M_2C', 'M_2D', 'M_2E', 'M_2F','M_2S', 'M_3A', 'M_3B', 'M_3C', 'M_3D', 'M_3E', 'M_3F','M_3S',...
    'M_4A', 'M_4B', 'M_4C', 'M_4D', 'M_4E', 'M_4F','M_4S', 'M_5A', 'M_5B', 'M_5C', 'M_5D', 'M_5E', 'M_5F', 'M_5S',...
    'M_6A', 'M_6B', 'M_6C', 'M_6D', 'M_6E', 'M_6F', 'M_6S','M_NS', 'M_NFS','M_NFS_9k_10k','M_NFS_uniform','M_NS','M_NS_ico');


return;
t1=1; t2=200;