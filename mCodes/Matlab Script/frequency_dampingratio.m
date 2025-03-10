%------------------------
% Frequency analysis of a time series
%---------------------------------

function main


clear all;
%close all;
clc;

Fs=100; % sampling frequency per second, because 4000 points for 40 sec, so 100
per_signal=0.15; % to sample data % for damping
%
E=5e5; rho=500; nu=0.4; 
L=0.2; b=0.05; h=0.02; I=b*h^3/12;
m=rho*(L*b*h);
%omega_n=sqrt(3*E*I/(m*L^3));
omega_n=3.51*sqrt(E*I/(rho*b*h*L^4));
%
np_s=6;


%--------------------
% Re=200
load('t_vs_deltax_info_single/t_vs_deltax_single_Re200.mat');
t_vs_deltax_Re200=fil_posi;  fil_posi=[];
%
t=t_vs_deltax_Re200(:,1);
delta_x=t_vs_deltax_Re200(:,2);
delta_x=delta_x-delta_x(1,1);
mean_delta=mean(delta_x(floor((1-per_signal)*length(delta_x)):end));
delta_x=delta_x./mean_delta;
delta_Re200=[t,delta_x];
%
% compute energy
[freq_200,delta_freq_200,energy_freq_200]=fft_signal(Fs,mean_delta*delta_x(np_s:end));
%
% compute damping curves
[Acurve_Re200,Bcurve_Re200,azeta_Re200,bzeta_Re200]=damping_curves(delta_Re200,per_signal);
%

%--------------------
% Re=400
load('t_vs_deltax_info_single/t_vs_deltax_single_Re400.mat');
t_vs_deltax_Re400=fil_posi;  fil_posi=[];
%
t=t_vs_deltax_Re400(:,1);
delta_x=t_vs_deltax_Re400(:,2);
delta_x=delta_x-delta_x(1,1);
mean_delta=mean(delta_x(floor((1-per_signal)*length(delta_x)):end));
delta_x=delta_x./mean_delta;
delta_Re400=[t,delta_x];
%
% compute energy
[freq_400,delta_freq_400,energy_freq_400]=fft_signal(Fs,mean_delta*delta_x(np_s:end));
%
% compute damping curves
[Acurve_Re400,Bcurve_Re400,azeta_Re400,bzeta_Re400]=damping_curves(delta_Re200,per_signal);
%
%----------------------------
% Re=800
load('t_vs_deltax_info_single/t_vs_deltax_single_Re800.mat');
t_vs_deltax_Re800=fil_posi;  fil_posi=[];
%
t=t_vs_deltax_Re800(:,1);
delta_x=t_vs_deltax_Re800(:,2);
delta_x=delta_x-delta_x(1,1);
delta_Re800=[t,delta_x];
%
% compute energy
[freq_800,delta_freq_800,energy_freq_800]=fft_signal(Fs,mean_delta*delta_x(np_s:end));
%
% compute damping curves
[Acurve_Re800,Bcurve_Re800,azeta_Re800,bzeta_Re800]=damping_curves(delta_Re800,per_signal);
%
%-------------------
% Re=1600
load('t_vs_deltax_info_single/t_vs_deltax_single_Re1600.mat');
t_vs_deltax_Re1600=fil_posi;  fil_posi=[];
%
t=t_vs_deltax_Re1600(:,1);
delta_x=t_vs_deltax_Re1600(:,2);
delta_x=delta_x-delta_x(1,1);
delta_Re1600=[t,delta_x];
%
% compute energy
[freq_1600,delta_freq_1600,energy_freq_1600]=fft_signal(Fs,mean_delta*delta_x(np_s:end));
%
% compute damping curves
[Acurve_Re1600,Bcurve_Re1600,azeta_Re1600,bzeta_Re1600]=damping_curves(delta_Re1600,per_signal);
%
%----------------
% Re=3200
load('t_vs_deltax_info_single/t_vs_deltax_single_Re3200.mat');
t_vs_deltax_Re3200=fil_posi;  fil_posi=[];
%
t=t_vs_deltax_Re3200(:,1);
delta_x=t_vs_deltax_Re3200(:,2);
delta_x=delta_x-delta_x(1,1);
delta_Re3200=[t,delta_x];
%
% compute energy
[freq_3200,delta_freq_3200,energy_freq_3200]=fft_signal(Fs,mean_delta*delta_x(np_s:end));
%
% compute damping curves
[Acurve_Re3200,Bcurve_Re3200,azeta_Re3200,bzeta_Re3200]=damping_curves(delta_Re3200,per_signal);
%
%


%-------------------------------------------
% damping ratio curve fit
%-------------------------------------------
beginx=0.14;
beginy=0.13;
xsize=0.84;
ysize=0.83;
%
figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',12,'LineWidth',1.5,'Parent',figure1,'XScale','linear','Yscale','linear',...
    'XTick',[0 5 10 15 20 25 30 35 40],'YTick',[0 0.5 1 1.5 2 2.5],...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
box(axes1,'on');
hold(axes1,'all');
%
plot(delta_Re400(:,1),delta_Re400(:,2),'k','linewidth',1.5); hold on
plot(Acurve_Re400(:,1),Acurve_Re400(:,2),'r--','linewidth',3); hold on;
plot(Bcurve_Re400(:,1),Bcurve_Re400(:,2),'b--','linewidth',3); hold on;
%
plot([0 50],[1 1],'k-.','linewidth',1.5);hold on
xlabel('t','fontsize',22)
ylabel('\delta(t)/\delta_s','fontsize',22)
xlim([1 11])
ylim([0 2.51])


% inset for zeta values
azeta=[azeta_Re200,azeta_Re400,azeta_Re800,azeta_Re1600,azeta_Re3200];
bzeta=[bzeta_Re200,bzeta_Re400,bzeta_Re800,bzeta_Re1600,bzeta_Re3200];
Re=[200,400,800,1600,3200];

% Create axes
axes2 = axes('Parent',figure1,'LineWidth',1.5,'XScale','log',...
    'XTick',[1e1 1e2 1e3 1e4],...
    'FontSize',12,...
    'Position',[0.635714285714285 0.641904761904764 0.299642857142857 0.286666666666667]);
box(axes2,'on');
hold(axes2,'on');

%
plot(Re,azeta,'ks','markersize',14,'markerfacecolor','r'); hold on
plot(Re,bzeta,'ko','markersize',14,'markerfacecolor','b'); hold on;
%
xlabel('Re','fontsize',14)
ylabel('\zeta','fontsize',20)
xlim([100 4000])
%ylim([0 2.1])

% Create textbox
annotation(figure1,'textbox',...
    [0.348214285714284 0.527571431125918 0.191071423409241 0.109523806969325],...
    'Color',[1 0 0],...
    'String','backward',...
    'LineStyle','none',...
    'FontSize',18,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.70178571428571 0.599000002554491 0.24107142857143 0.109523806969325],...
    'Color',[1 0 0],...
    'String','backward',...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.457142857142855 0.260904764459251 0.191071423409241 0.109523806969325],...
    'Color',[0 0 1],...
    'String','forward',...
    'LineStyle','none',...
    'FontSize',18,...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.69285714285714 0.825190478744968 0.191071423409241 0.109523806969325],...
    'Color',[0 0 1],...
    'String','forward',...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','off');

% Create arrow
annotation(figure1,'arrow',[0.25892857142857 0.242857142857142],...
    [0.665666666666668 0.60952380952381]);

% Create textbox
annotation(figure1,'textbox',...
    [0.194642857142856 0.653761907316393 0.191071423409241 0.109523806969325],...
    'String',{'~e^{-\zeta t}'},...
    'LineStyle','none',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FitBoxToText','off');


%-------------------------------






% ---------------------------------------
beginx=0.13;
beginy=0.14;
xsize=0.85;
ysize=0.83;

figure4= figure('Color',[1 1 1],'Visible','on');  
axes4  = axes('fontsize',12,'LineWidth',1.5,'Parent',figure4,'XScale','log','Yscale','log',...
    'XTick',[1e-2 1e-1 1e0 1e1 1e2 1e3],'YTick',[1e-6 1e-4 1e-2 1e0],...
    'Position',[beginx beginy xsize ysize]); % adjust by hand
box(axes4,'on');
hold(axes4,'all');

plot(freq_200,energy_freq_200./trapz(freq_200,energy_freq_200),'b-','linewidth',2);hold on
plot(freq_800,energy_freq_800./trapz(freq_800,energy_freq_800),'r-','linewidth',2);hold on
plot(freq_1600,energy_freq_1600./trapz(freq_1600,energy_freq_1600),'k-','linewidth',2);hold on
plot(freq_3200,energy_freq_3200./trapz(freq_3200,energy_freq_3200),'m-','linewidth',2);hold on

plot([32 32],[1e-12 1e2],'k-.','linewidth',1.5);hold on
plot([56 56],[1e-12 1e2],'k--','linewidth',1.5);hold on



xlabel('\omega','fontsize',22)
ylabel('E(\omega)','fontsize',22)

xlim([1e-0 1e3])
ylim([1e-6 2])

% % Create arrow
% annotation(figure4,'arrow',[0.517857142857143 0.525],...
%     [0.834714285714286 0.161904761904762],'LineWidth',2);

% Create textbox
annotation(figure4,'textbox',...
    [0.541071428571428 0.137095240933556 0.111607140063175 0.119047616209303],...
    'String',{'\omega_d'},...
    'LineStyle','none',...
    'FontSize',18);

% % inset
% axes3 = axes('Parent',figure4,'LineWidth',3,'FontSize',16,...
%     'Position',[0.657142857142856 0.740000000000003 0.3 0.2]);
% box(axes3,'on');
% hold(axes3,'on');
% 
% box(axes3,'on');
% hold(axes3,'all');
% 
% plot(t,delta_x,'m','linewidth',2);hold on
% 
% xlabel('t','fontsize',14)
% ylabel('\delta','fontsize',14)
% 
% xlim([0 7])
% ylim([0 0.16])
%---------------------------------

% now et us fit underdamped oscillations
sig_defle=[freq_200(2:end)',delta_freq_200(2:end)];
%
% to eliminate first point
cind=find(sig_defle(:,2)==max(sig_defle(:,2)));

% natural frequency of the system is
rho=500; E=5e5; nu=0.4;
b=0.05; h=0.02; I=(1/12)*b*h^3; L=0.2;

n=1;
beta_n=(1/L^(0.5))*(2*n-1)*(pi/2);
omega_n=(1/L^2)*(beta_n^2)*(E*I/(rho*b*h))^(1/2);

omega_n
omega_d=sig_defle(cind,1)



%assuming the cantilever beam as a point mass
k=3*E*I/L^3;
m_canti=rho*b*h*L;
m=(33/140)*m_canti;
omega=sqrt(k/m);


omega





% % mode shape for fixed-free end
% omega=3.51;
% lamb=omega^2;
% alpha=(cos(lamb)+cosh(lamb))/(sin(lamb)+sinh(lamb));
% X=C*(cosh(lamb*L)-cos(lamb*L)-alpha*(sinh(lamb*L)-sin(lamb*L))
% T=sin(lamb^(0.5) *t)
% 
% delta=X.*T;



end
%
%
%-------------------------------
% damping factor calculation
%-----------------------------
function [Acurve_Re200,Bcurve_Re200,azeta,bzeta]=damping_curves(delta_Re200,per_signal)

%-----------------------
% damping factor
%------------------------
var=delta_Re200;
cut_off=floor(per_signal*length(var(:,2)));
S=diff(var(1:cut_off,2));
S1=S(2:end);
S2=S(1:end-1);
imax=[]; imn=[];
imx=find(S1.*S2 <= 0 & S1-S2 < 0 & S2 > 0)+1;
imn=find(S1.*S2 <= 0 & S1-S2 > 0 & S1 > 0)+1;
apeak_del=[var(imx,1),var(imx,2)];
bpeak_del=[var(imn,1),var(imn,2)];
%
temp=0; count=0;
nn_a=length(apeak_del(:,2));
for i=2:nn_a
count=count+1;
temp=temp+apeak_del(i,2)/apeak_del(i-1,2);
end;
alog_decre=temp/count;
%
temp=0; count=0;
nn_b=length(bpeak_del(:,2));
for i=2:nn_b
count=count+1;
temp=temp+bpeak_del(i,2)/bpeak_del(i-1,2);
end;
blog_decre=temp/count;
%
% find damping parameter
azeta=sin(atan(alog_decre/(2*pi))); bzeta=sin(atan(blog_decre/(2*pi)));
%
A_fac=apeak_del(1,2); B_fac=bpeak_del(1,2);
%
at_vary=linspace(apeak_del(1,1),40,200);
bt_vary=linspace(bpeak_del(1,1),40,200);
%
% jump is arbitrary to test curve fit
jump=1.3;
%jump=1;
Acurve_Re200=[at_vary',1+(A_fac-1)*(exp(-jump*azeta*at_vary'))];
Bcurve_Re200=[bt_vary',1+(B_fac-1)*(exp(-jump*bzeta*bt_vary'))];


end



function [freq,delta_freq,energy_freq]=fft_signal(Fs,U)
%
L=length(U); % Number of samples
t=(0:L-1)/(Fs); % Time vector
%
% Perform FFT analysis on the U-velocity signal and plot Amplitude spectrum
aFData=fft(U); % Take FFT of U signal
n=L/2; % FFT will yield half the number of unique points
aFreq=Fs*(1:n)/n; % Frequency array (half the length of signal)
aFMag=abs(aFData(1:n)/L); % Normalized Magnitude array (half the length of signal)
%
% Plot the energy density spectrum
Power=abs(fft(U)).^2/L; %Power is the magnitude squared by L
Energy=Power/Fs;
%
% send back
freq=2*pi*aFreq; delta_freq=aFMag; energy_freq=Energy(2:L/2+1);


% %--------------------
% % t vs signal
% %--------------------
% %
% figure(1)
% plot(t,U,'b'); % Plot the velocity trace
% 
% ylabel('\delta_x');
% xlabel('time (s)');
% hold on;
% 
% %--------------------
% % frequency vs. signal amplitude
% %--------------------
% %
% figure(2);
% semilogx(aFreq(2:n),aFMag(2:n),'b') % Plot frequency against magnitude
% 
% xlabel('Frequency (Hz)')
% ylabel('\overline{delta_x(f)}')
% hold on;
% 
% %--------------------
% % frequency vs. energy density spectrum
% %--------------------
% %
% figure(3)
% loglog(aFreq,Energy(2:L/2+1),'b')
% 
% xlabel ('Frequency (Hz)')
% ylabel ('Energy, E(f) (=Power/frequency) (m2/s)')
% hold on;
% 
% 

end

