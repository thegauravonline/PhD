 clear all;
 load('/media/magcyan/ssdT7/conti1_4tb_11/Flow_uv_data/parabolic/uv_5p1S_parabolic.mat');

close all; 
clc;
     
%%

Ux=0.05; h=0.4;
circ_ref=Ux*h;
U_ref=0.1;

del_g=[0.15 0.1501 0.1504 0.1512 0.1513 0.1538 0.1556 0.1614 0.169 0.1894 0.2153 0.2445 0.2756].*0.4; 
U_g=[0.440406 0.440244 0.440243 0.439589 0.437491 0.430859 0.426271 0.412808 0.394981 0.354741 0.31495 0.278235 0.247984]; 
Ca=[0 0.0008 0.001 0.002 0.004 0.008 0.01 0.015 0.02 0.03 0.04 0.05 0.06]; 

circ_ref=(U_g./del_g)./U_g.^2;
t_ref=U_g./del_g;

t=2400;

y_bot=2;
y_top=116;

% Initialize an array for the vorticity
 vorticity = zeros(t,360);
 
% Iterate over each timestep
for t = 1:t
    % Extract the velocity fields at this timestep
    u_t = uu{t};
    v_t = vv{t};

    X=x(1,:);
    Y=y(:,1);
    
    vorticity_t = curl(X,Y(y_bot:y_top),u_t(y_bot:y_top,:),v_t(y_bot:y_top,:));

%     vorticity_t=(vorticity_t.^2).^0.5; %if only positive vorticity is considered


    % Vertically integrate the vorticity at this timestep
    vorticity(t,:) = trapz(Y(y_bot:y_top), vorticity_t);
        uu_t(t,:) = trapz(Y(y_bot:y_top), u_t(y_bot:y_top,:));
end

% Now you have the vertically integrated vorticity as a function of time. 
% You can plot this against the x and y coordinates to get your space-time map. 

% Create a 2D grid for the coordinates
[X, T] = meshgrid(X, 1:t);

% %%
% % Plot the space-time map
% pcolor(X(:,90:270), T(:,90:270), vorticity(:,90:270)); hold on;
% shading interp;
% colorbar;
% title('Vertically integrated vorticity');
% xlabel('Space (x)');
% ylabel('Time (t)');


%% 
figure6= figure('Color',[1 1 1],'Visible','on');   
axes6  = axes('fontsize',36,'LineWidth',3.5,'Parent',figure6,'XScale','linear','Yscale','linear','fontsize',30,'TickLabelInterpreter','Latex',...
    'XTick',[2.2 6 10],'YTick',[0 100 200 300],'fontsize',30); % adjust by hand
box(axes6,'on');
hold(axes6,'all');
% set(0, 'defaultAxesPlotBoxAspectRatioMode', 'manual');
 Position = [0 0.0 780 600];
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


pcolor(X(:,80:350)./0.4, T(:,80:350)./t_ref(1), vorticity(:,80:350)./U_g(1)^2); hold on;
shading interp;

% plot(T(:,82:350)./t_ref(1),max(vorticity(:,82:350)./U_g(1)^2));
% Create colorbar
colorbar(axes6,'TickLabelInterpreter','latex','Limits',[-0.2 0.2]);
 caxis([-0.2 0.2]);
      xlim([2.2 10])
      ylim([0 300])


%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2,'DisplayName','$St_f=16$'); hold on
ylabel('$t/\tau$','interpreter','latex','fontsize',36);
xlabel('$x/h$','interpreter','latex','fontsize',36);


% Create text
text('FontSize',30,'Interpreter','latex',...
    'String','$\Omega_z/u_g^2$',...
    'Position',[45.3334396750612 71.9679633867278 1.4210854715202e-14],'Rotation',270);

%%
return;
%% 
figure7= figure('Color',[1 1 1],'Visible','on');   
axes6  = axes('fontsize',36,'LineWidth',3.5,'Parent',figure7,'XScale','linear','Yscale','linear','fontsize',30,'TickLabelInterpreter','Latex',...
    'XTick',[0 10 20 30 40],'YTick',[0 50 100 150],'fontsize',30); % adjust by hand
box(axes6,'on');
hold(axes6,'all');
% set(0, 'defaultAxesPlotBoxAspectRatioMode', 'manual');
 Position = [0 0.0 780 600];
 set(figure7,'Position',Position);
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

pcolor(X(:,90:350)./del_g(1), T(:,90:350)./t_ref(1), uu_t(:,90:350)./U_g(1)); hold on;
shading interp;

% plot(T(:,90:270)./t_ref(1),max(vorticity(:,90:270)./U_g(1)^2));
% Create colorbar
colorbar(axes6,'TickLabelInterpreter','latex','Limits',[0.055 0.065]);
      xlim([15 80])
      ylim([0 120])


%  plot(fil_posi_5S(:,1)./T_ref,fil_posi_5C(:,2)./h_ref,'Color',[.5,.5,.5],'linewidth',2,'DisplayName','$St_f=16$'); hold on
ylabel('$t/\tau$','interpreter','latex','fontsize',36);
xlabel('$x/\delta_g$','interpreter','latex','fontsize',36);


% Create text
text('FontSize',30,'Interpreter','latex',...
    'String','$u_x/u_g$',...
    'Position',[45.3334396750612 71.9679633867278 1.4210854715202e-14],'Rotation',270);


% % Create textbox
% annotation(figure7,'textbox',...
%     [0.214138832997992 0.759762775507702 0.404695676525969 0.136903891158981],...
%     'Color',[0.05 0.05 0.05],...
%     'String',{'unbounded','bounded'},...
%     'LineStyle','none',...
%     'Interpreter','latex',...
%     'FontSize',24,...
%     'FitBoxToText','off');
% 
% % Create ellipse
% annotation(figure7,'ellipse',...
%     [0.188766599597586 0.851666666666672 0.018718309859155 0.0250000000000021],...
%     'Color',[0 0.447058823529412 0.741176470588235],...
%     'LineWidth',4);
% 
% % Create ellipse
% annotation(figure7,'ellipse',...
%     [0.188766599597586 0.791666666666674 0.018718309859155 0.0250000000000021],...
%     'Color',[0.635294117647059 0.0784313725490196 0.184313725490196],...
%     'LineWidth',4);


