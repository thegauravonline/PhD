clear all;
close all; 
clc;
% 
% % load('/media/magcyan/cut50/Article4/Latex/Article/Elsevier’s CAS LaTeX Single-Column Template/Figures/MI_HL/pt2_1c.mat');
% 

Case=["1a" ,"1b","1c","1d" ,"1e",...
    "2a", "2b" ,"2c", "2d", "2e",...
    "3a", "3b", "3c", "3d", "3e",...
    "4a", "4b", "4c", "4d", "4e",...
    "0a", "0b" ,"0c", "0d" ,"0e",...
    "Singlea", "Singleb" ,"Singlec" "Singled", "Singlee" ];

%      

[r,c]=size(Case)

for i=25:25  
Case
 str=convertStringsToChars(Case(i))
% str(1)
% str(2)
                    
 fclose all;

%
CaseNo=str(1);
CaseID=str(2);

file_tag=[CaseNo,CaseID]

t1=1;
t2=5000;

Ux=0.8; h=0.4;
T_ref=h/Ux;
U_ref=0.1;

% %%
tic;
load(['pt2_',file_tag,'.mat'])
for i=t1:t2
 var=sqrt(mean((t22{i,1}-0.5).^2));
 M=1-sqrt((var.^2)./(max(var).^2));     
 M_1c(i,:)=M;
end

 toc;
    X=x(1,:);
    Y=y(:,1);

% Create a 2D grid for the coordinates
[X, T] = meshgrid(X, (1:t2)/100);

%% 
figure6= figure('Color',[1 1 1],'Visible','on');   
axes6  = axes('fontsize',36,'LineWidth',3.5,'Parent',figure6,'XScale','linear','Yscale','linear','fontsize',36,'TickLabelInterpreter','Latex',...
    'XTick',[0.013 2 4 6 8 10 12 14],'YTick',[0 25 50 75 100],'XTickLabel',...
    {'0','2','4','6','8','10','12','14'},'fontsize',36); % adjust by hand
box(axes6,'on');
hold(axes6,'all');
% set(0, 'defaultAxesPlotBoxAspectRatioMode', 'manual');
 Position = [0 0 900 750];
 set(figure6,'Position',Position);
%  plot(velocity_1S(2:end,1).*t_ref(1),smooth(diff(velocity_1S(:,1))./diff(velocity_1S(:,2)),10),'Color',[1,0,0],'Marker','o','MarkerSize',6,'LineWidth',1.5,'LineStyle','-','DisplayName','$rigid$'); hold on
%  plot(velocity_1Sfixbc(2:end,1).*t_ref(1),smooth(diff(velocity_1Sfixbc(:,1))./diff(velocity_1Sfixbc(:,2))),'Color',[0,0,0],'Marker','o','MarkerSize',6,'LineWidth',1.5,'LineStyle','-','DisplayName','$rigid$'); hold on
% 
% plot([b b], [0 29.13],'Color',[0.75,0,0],'LineWidth',2.8,'LineStyle','--');hold on
% plot([0 b], [29.13 29.13],'Color',[0.75,0,0],'LineWidth',2.8,'LineStyle','--');hold on
% 
%  [a,b]= max(S1_lvp(:));
% a=a.*circ_ref(1);
% b=t(b).*t_ref(1);
% plot([b b], [0 38.6],'Color',[0 0.447058823529412 0.741176470588235],'LineWidth',2.8,'LineStyle','--');hold on
% plot([0 b], [38.6 38.6],'Color',[0 0.447058823529412 0.741176470588235],'LineWidth',2.8,'LineStyle','--');hold on


pcolor(X(:,:)./0.4, T(:,:)./T_ref, M_1c(:,:)); hold on;
shading interp;

% plot(T(:,82:350)./t_ref(1),max(vorticity(:,82:350)./U_g(1)^2));
% Create colorbar
% colorbar(axes6,'TickLabelInterpreter','latex','Limits',[0 1]);
 caxis([0 1]);
       xlim([0.013 14.04])
       ylim([-0.35 100.35])


%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2,'DisplayName','$St_f=16$'); hold on
ylabel('$t/\tau$','interpreter','latex','fontsize',48);
xlabel('$x/h$','interpreter','latex','fontsize',48);


saveas(gcf,['spcaeTime_M_',file_tag,'.png'])
saveas(gcf,['spcaeTime_M_',file_tag,'.fig'])

% Create text
% text('FontSize',36,'Interpreter','latex',...
%     'String','$\Omega_z/u_g^2$',...
%     'Position',[45.3334396750612 71.9679633867278 1.4210854715202e-14],'Rotation',270);

%%
M_1c=[];
end
return;











return;

t22_3D_Single_a=cat(3,t22{t1:t2,:});  %3D Matrix data
t22_Single_a_mean=mean(t22_3D_Single_a,3);     %
var_Single_a=sqrt(mean((t22_Single_a_mean-0.5).^2));    %row wise mean
M_Single_a=1-sqrt((var_Single_a.^2)./(max(var_Single_a)^2));      clear t22* var*; toc;
x_Single=x(1,:);
% 
% [X, T] = meshgrid(X, 1:t);
for i=1:5000
 aa=mean(t22{i,1});
 a(i,:)=aa;
end