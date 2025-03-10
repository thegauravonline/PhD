 clear all;
 close all; 
clc;
% 
% % load('/media/magcyan/cut50/Article4/Latex/Article/Elsevier’s CAS LaTeX Single-Column Template/Figures/MI_HL/pt2_1c.mat');
% 

% Case=["1a" ,"1b","1c","1d" ,"1e",... %10h @ x=257  12h @ x=289
%     "2a", "2b" ,"2c", "2d", "2e",... %10h @ x=267  12h @ x=284
%     "3a", "3b", "3c", "3d", "3e",... %10h @ x=264  12h @ x=279
%     "4a", "4b", "4c", "4d", "4e",... %10h @ x=259  12h @ x=274
%     "0a", "0b" ,"0c", "0d" ,"0e",... %10h @ x=330  12h @ x=341
%     "Singlea", "Singleb" ,"Singlec" "Singled", "Singlee" ]; %10h @ x=242  12h @ x=274
% 
% %      
% 
% [r,c]=size(Case)
% 
% for i=2:2  
% Case
%  str=convertStringsToChars(Case(i))
% % str(1)
% % str(2)
% 
%  fclose all;
% 
% 
%  %
% % CaseNo=str(1);
% % CaseID=str(2);



t1=1;
t2=5000;
t=linspace(t1,t2,(t2-t1)+1);
t=t/100;


Ux=0.8; h=0.4;
T_ref=h/Ux;
U_ref=0.1;

%%
n=0;
var=[];
M=[];
%
tic;
file_tag=['Single','e'];
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
    n=n+1;
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_t_S(n,:)=M;
end
toc;
%%
n=0;
var=[];
M=[];
%
tic;
file_tag=['0','e'];
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
    n=n+1;
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_t_0(n,:)=M;
end
toc;
%%
n=0;
var=[];
M=[];
% 
tic;
file_tag=['1','e'];
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
    n=n+1;
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_t_1(n,:)=M;
end
toc;

%%
n=0;
var=[];
M=[];
% %%
tic;
file_tag=['2','e']
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
    n=n+1;
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_t_2(n,:)=M;
end
toc;

%%
n=0;
var=[];
M=[];
%
 tic;
 file_tag=['3','e']
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
    n=n+1;
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_t_3(n,:)=M;
end
toc;

%%
n=0;
var=[];
M=[];
%
 tic;
 file_tag=['4','e']
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
    n=n+1;
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_t_4(n,:)=M;
end
 toc;

%%

  x_1=289; x_2=284; x_3=279; x_4=274; x_0=341; x_S=274; %12h
  % x_1=257; x_2=267; x_3=264; x_4=259; x_0=330; x_S=242; %10h

Z_1 = smooth(t(1:10),M_t_1(1:10,x_1),10,'lowess');
Z_2 = smooth(t(1:10),M_t_2(1:10,x_2),10,'lowess');
Z_3 = smooth(t(1:10),M_t_3(1:10,x_3),10,'lowess');
Z_4 = smooth(t(1:10),M_t_4(1:10,x_4),10,'lowess');
Z_0 = smooth(t(1:10),M_t_0(1:10,x_0),10,'lowess');
Z_S = smooth(t(1:10),M_t_S(1:10,x_S),10,'lowess');

Z_11 = smooth(t(11:5000),M_t_1(11:5000,x_1),500,'lowess');
Z_22=  smooth(t(11:5000),M_t_2(11:5000,x_2),500,'lowess');
Z_33 = smooth(t(11:5000),M_t_3(11:5000,x_3),500,'lowess');
Z_44 = smooth(t(11:5000),M_t_4(11:5000,x_4),500,'lowess');
Z_00 = smooth(t(11:5000),M_t_0(11:5000,x_0),500,'lowess');
Z_SS = smooth(t(11:5000),M_t_S(11:5000,x_S),500,'lowess');

Z_1=[Z_1; Z_11]; Z_2=[Z_2; Z_22]; Z_3=[Z_3; Z_33]; Z_4=[Z_4; Z_44]; Z_0=[Z_0; Z_00]; Z_S=[Z_S; Z_SS]; t=t';

%% fun
beginx=0.2;
beginy=0.17;
xsize=0.75;
ysize=0.80;
 figure3= figure('Color',[1 1 1],'Visible','on','NumberTitle', 'off', 'Name', 'Ca_fix');  
 axes3  = axes('fontsize',36,'LineWidth',1.5,'Parent',figure3,'XScale','linear','Yscale','linear','TickLabelInterpreter','latex'); % adjust by hand
 box(axes3,'on');
 hold(axes3,'all');
 
 Position = [0 0.0 900 750];
 set(figure3,'Position',Position);

 plot(t./T_ref,Z_S,'Color',[0.2,0.4,0.6],'LineStyle','-','linewidth',5,'DisplayName','$Single$'); hold on
 plot(t./T_ref,Z_4,'Color',[0.7,0.3,0.2],'LineStyle','-','linewidth',5,'DisplayName','$d/h=2.0$'); hold on
 plot(t./T_ref,Z_3,'Color',[0,0,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.5$'); hold on
 plot(t./T_ref,Z_2,'Color',[1,0,0],'LineStyle','-','linewidth',5,'DisplayName','$d/h=1.0$'); hold on
 plot(t./T_ref,Z_1,'Color',[0,0.5,0],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.5$'); hold on
 plot(t./T_ref,Z_0,'Color',[1,0,1],'LineStyle','-','linewidth',5,'DisplayName','$d/h=0.0$'); hold on

   ylim([0 1.1])
   xlim([0 100])

xlabel('$t/\tau$','interpreter','latex','fontsize',42);
ylabel('$MI$','interpreter','latex','fontsize',42);

% Create legend
legend1 = legend(axes3,'show');
set(legend1,'Units','points',...
    'Position',[204.53576005639 107.905556440351 523.277303059895 80.7999996609157],...
    'NumColumns',3,...
    'Interpreter','latex',...
    'FontSize',32);

% Create textbox
annotation(figure3,'textbox',...
    [0.13194017094017 0.878670255720054 0.171222222222222 0.052],'String',{'$Re=400$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',36,...
    'FitBoxToText','off');



