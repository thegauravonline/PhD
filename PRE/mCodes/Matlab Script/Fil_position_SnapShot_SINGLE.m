%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Flapping filaments- Computing horizontal tip position
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;



%-------SINGLE FILAMENT---------------------------------------------------------------
fst1=21; fst2=272; % start and end lines of structural info
fsh=6;  % #of points in horizontal direction of filament

% %------- DOUBLE FILAMENT--------------------------------------------------------------
% fst1=21; fst2=644; % start and end lines of structural info
% fsh=6;  % #of points in horizontal direction of filament
% 
% %--------ALIGNED DOUBLE FILAMENT------------------------------------------------------
% fst1=21; fst2=2264; % start and end lines of structural info
% fsh=11;  % #of points in horizontal direction of filament
% %------------------------------------------------------------------------------------

%-----------------------------------------
t_end=100 % #of time-directories
%-----------------------------------------

h_ref=0.4;

% suitably name this file
%savefile='/media/iitmech4/Disk -1/icoFsiElasticNonLinULSolidFoam/Double_Filament/4/Matlab/mat/d4444444.mat';

% check factors based on directory write-up
fac=100; % factor for t_end
fac_1=10;
fac_2=100;

% % Location of directories and files
% dirname_1='/media/iitmech4/Disk -1/icoFsiElasticNonLinULSolidFoam/Double_Filament_Constant_Width/RUN/Single/a/fluid/';
% dirname_2='/solid/polyMesh/points';
% %------------------------------------------------------------------------------------------

%--------------------------
% check with Gaurav's disk
%---------------------------
dirname_1='/media/rl/Seagate\ Expansion Drive/Double_Filament_Fsi\ _Gaurav/All_Test_Cases/Single/a/fluid/';
dirname_2='/solid/polyMesh/points';
%--------------------------



fil_posi=[];


% figure1= figure('Color',[1 1 1],'Visible','on');  
% axes1  = axes('fontsize',28,'LineWidth',1.5,'Parent',figure1,'XScale','linear','Yscale','linear',...
%     'XTick',[0 1 2 3 4 5 ],'YTick',[0 0.2 0.4],'fontsize',14,...
%    'Position',[0.0943661971830986 0.246153846153846 0.888450704225352 0.693846153846157]); % adjust by hand
% box(axes1,'on');
% hold(axes1,'all');
% Position = [0 0 8*100 100];
% set(figure1,'Position',Position); 
% 


% figure
figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',20,'LineWidth',1.5,'Parent',figure1,'XScale','linear','Yscale','linear','fontsize',16,...
    'XTick',[0 1 2 3 4 5 ],'YTick',[0 0.2 0.4],'fontsize',14,...
   'Position',[0.05 0.26 0.93 0.67]); % adjust by hand
box(axes1,'on');
hold(axes1,'all');

Position = [0.0 0.0 8*275 275];
set(figure1,'Position',Position); 







% time loop----------------------------
for t_loop=1:99:t_end-1   
    
dir_key=sprintf('%0.2f',t_loop/fac); % note subdirectory name

if(mod(t_loop,fac_1)==0)
    dir_key=sprintf('%0.1f',t_loop/fac); % note subdirectory name
end;
if(mod(t_loop,fac_2)==0)
    dir_key=sprintf('%0.0f',t_loop/fac); % note subdirectory name
end;


filename=[dirname_1,dir_key,dirname_2];

filename


fileID=fopen(filename,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

ai=[];
for i=fst1:fst2
    
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end


% required data info-only 0.5 portion is considered for neglecting -z
% coordinates
ai_1=ai(1:floor(0.5*length(ai(:,1))),1:2);
ai_2=zeros(size(ai_1)); %reading only -z info

% construct average line over strip
fila_1=[]; fila_2=[];


for j=1:fsh:length(ai_1(:,1))  
   
fila_1=[fila_1;[mean(ai_1(j:j+fsh-1,1)),mean(ai_1(j:j+fsh-1,2))]];
fila_2=[fila_2;[mean(ai_2(j:j+fsh-1,1)),mean(ai_2(j:j+fsh-1,2))]];
end;


% find the distance between extreme tip positions- oneway is looking at end points of arrays
xgap_tip=abs(fila_1(end,1)-fila_2(1,1)); % last point of fil1 -first point of fil2
ygap_tip=abs(fila_1(end,2)-fila_2(1,2));

% just for check-later remove these two lines
% xgap_tip=-(fila_1(end,1)-fila_2(1,1)); % last point of fil1 -first point of fil2
% ygap_tip=-(fila_1(end,2)-fila_2(1,2));

% store time series of tip positions- 6th&7th are for gaps
fil_posi=[fil_posi;[t_loop/fac,fila_1(end,1),fila_1(end,2),fila_2(1,1),fila_2(1,2),xgap_tip,ygap_tip]];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% to view time related figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if(t_loop==1)
% plot(fila_1(:,1)./h_ref,2*fila_1(:,2)./h_ref,'k-','linewidth',2);hold on
% plot(fila_2(:,1)./h_ref,2*fila_2(:,2)./h_ref,'k-','linewidth',2);hold on
% end;



%if(mod(t_loop,0)==1000)
plot(fila_1(:,1),fila_1(:,2),'k-');hold on
plot(fila_2(:,1),fila_2(:,2),'k-');hold on
%end;


xlim([0 3.2])
ylim([0 0.4])


end

plot(fila_1(:,1),fila_1(:,2),'r-','linewidth',2);hold on
plot(fila_2(:,1),fila_2(:,2),'r-','linewidth',2);hold on

xlim([0 3.2])
ylim([0 0.4])

xlabel('x','fontsize',22);
ylabel('y','fontsize',22);

% Create textbox
annotation(figure1,'textbox',...
    [0.06 0.71 0.8 0.21],...
    'String',{'Re=200'},...
    'FontSize',16,...
    'EdgeColor','none');


return;


% to save processed data
save(savefile,'fil_posi');


figure(100)
plot(fil_posi(:,1),fil_posi(:,6)-0.8,'k-o','linewidth',2,'markersize',1,'markerfacecolor','b');hold on
plot([0  100],[0 0],'r--','linewidth',2);hold on
xlabel('t (s)','fontsize',24);
ylabel('tip gap (m)','fontsize',24);
xlim([0 40])
ylim([-0.05 0.05])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% to view time related figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
beginx=0.03;
beginy=0.1;
xsize=0.95;
ysize=0.85;

figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',12,'LineWidth',1.5,'Parent',figure1,'XScale','linear','Yscale','linear',...
    'XTick',[0 1 2 3],'YTick',[0 0.2 0.4],...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
box(axes1,'on');
hold(axes1,'all');
Position = [10 20 8*150 150];
set(figure1,'Position',Position); 

plot(ai_1(:,1),ai_1(:,2),'bs');hold on
plot(ai_2(:,1),ai_2(:,2),'bs');hold on
plot(fila_1(:,1),fila_1(:,2),'k+');hold on
plot(fila_2(:,1),fila_2(:,2),'k+');hold on
plot(fila_1(end,1),fila_1(end,2),'ro','markersize',16);hold on
plot(fila_2(1,1),fila_2(1,2),'ro','markersize',16);hold on


xlim([0 3.2])
ylim([0 0.4])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


