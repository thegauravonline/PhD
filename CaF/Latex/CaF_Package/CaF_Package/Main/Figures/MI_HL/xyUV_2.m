clear all;
close all;
fclose all;
clc;

Case=["2a","2b","2c","2d","2e"];

%      

[r,c]=size(Case)

for i=3:4
    i
Case
 str=convertStringsToChars(Case(i))
% str(1)
% str(2)

 fclose all;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% time information
%-----------------
t_start=1; t_end=5000; t_jump=1;   % change it to see different times
fac=100; fac_1=10; fac_2=100;          % based on initial wite-up
%
%-----------------------------------------------
% set geometry, velocity and other things
%-----------------------------------------------
h_ref=0.4;                              % channel width
d_ref=0*h_ref;                         % filament gap
L_channel=14*h_ref;                     % channel length
W_channel=h_ref;   
Re=500;Uchar=0.1;
fil_ht=h_ref/2; nu=(Uchar*fil_ht/Re); 
%
%
CaseNo=str(1);
CaseID=str(2);

file_tag=[CaseNo,'/',CaseID]
%
%
fsh=5;                                 % #of points in horizontal direction of filament
%
%------------------------------
% change them for each Case
% x & y info: Gaurav
%------------------------------
%
% dirname_1a=['/media/magcyan/cut30/runLong/',file_tag,'/fluid/'];
% dirname_2a='/polyMesh/points';
% u & v info
%if (CaseNo=='2')
 %   CaseNo
 %   dirname_1b=['/media/magcyan/Disk_1/Gaurav/Article2/',file_tag,'/fluid/'];

%elseif (CaseNo=='6')
 %   CaseNo
 %   dirname_1b=['/media/magcyan/Disk_1/Gaurav/Article2/',file_tag,'/fluid/']
%else
dirname_1b=['/media/magcyan/cut60/dbl_fil_scalar/',file_tag,'/fluid/'];

dirname_2b='/U';
dirname_2a='/polyMesh/points';
%
%--------------------------------------
% restructure the grid to to 50 points
np=41; 

n_snapshot=0;  % count variable
Uf=[];Vf=[];


for t_loop=t_start:t_jump:t_end
%
% have a count
n_snapshot=n_snapshot+1;   
%
% time folder construction
dir_key=sprintf('%0.2f',t_loop/fac); % note subdirectory name
if(mod(t_loop,fac_1)==0)
    dir_key=sprintf('%0.1f',t_loop/fac); % note subdirectory name
end;
if(mod(t_loop,fac_2)==0)
    dir_key=sprintf('%0.0f',t_loop/fac); % note subdirectory name
end;

%
%-----------------------------------------------
% reading and reshaping u & v matrices
%---------------------------------------------
dirname_2b='/U';
filename_uv=[dirname_1b,dir_key,dirname_2b];

fileID=fopen(filename_uv,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

% block 1
stl=23; edl=1272; % start and end lines
p1=50; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b1=reshape(ai(:,1),[p1,p2]);
v_b1=reshape(ai(:,2),[p1,p2]);

% block 2
stl=1273; edl=2522;
p1=50; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b2=reshape(ai(:,1),[p1,p2]);
v_b2=reshape(ai(:,2),[p1,p2]);


% % block 3-Gap plate2
% stl=2523; edl=2647;
% p1=5; p2=25; % block size
% ai=[];
% for i=stl:edl
% RelevantLine=Intro{1}{i};
% ai=[ai;str2num(RelevantLine(1:end))];
% end
% t1_b3=reshape(ai(:),[p1,p2]);

% block 4
stl=2648; edl=5772;
p1=125; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b4=reshape(ai(:,1),[p1,p2]);
v_b4=reshape(ai(:,2),[p1,p2]);


% block 5
stl=5773; edl=7022;
p1=50; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b5=reshape(ai(:,1),[p1,p2]);
v_b5=reshape(ai(:,2),[p1,p2]);

% % block 6-Gap plate1
% stl=7022; edl=7147;
% p1=5; p2=25; % block size
% ai=[];
% for i=stl:edl
% RelevantLine=Intro{1}{i};
% ai=[ai;str2num(RelevantLine(1:end))];
% end
% t2_b6=reshape(ai(:),[p1,p2]);

% block 7
stl=7148; edl=8397;
p1=50; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b7=reshape(ai(:,1),[p1,p2]);
v_b7=reshape(ai(:,2),[p1,p2]);


% block 8
stl=8398; edl=11522;
p1=125; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b8=reshape(ai(:,1),[p1,p2]);
v_b8=reshape(ai(:,2),[p1,p2]);


% block 9
stl=11523; edl=14022;
p1=100; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b9=reshape(ai(:,1),[p1,p2]);
v_b9=reshape(ai(:,2),[p1,p2]);


% block 10
stl=14023; edl=16522;
p1=100; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(2:end-1))];
end
u_b10=reshape(ai(:,1),[p1,p2]);
v_b10=reshape(ai(:,2),[p1,p2]);



% constrcut x and y matrices
u_b1=u_b1'; v_b1=v_b1';
u_b2=u_b2'; v_b2=v_b2';
% u_b3=u_b3'; v_b3=v_b3';
u_b4=u_b4'; v_b4=v_b4';
u_b5=u_b5'; v_b5=v_b5';
% u_b6=u_b6'; v_b6=v_b6';
u_b7=u_b7'; v_b7=v_b7';
u_b8=u_b8'; v_b8=v_b8';
u_b9=u_b9'; v_b9=v_b9';
u_b10=u_b10'; v_b10=v_b10';
%

% size(u_b1)
% size(u_b5)
% 
% size(u_b2)
% size(u_b7)
% 
% size(u_b4)
% size(u_b8)
% 
% 
% size(u_b9)
% size(u_b10)


%u_zero_1=zeros(50,8); u_zero_2=zeros(50,8);v_zero_1=zeros(50,8); v_zero_2=zeros(50,8);
% u11=[[u_b1,u_zero_1,u_b2];[u_b3,u_b4,u_b5];[u_b6,u_zero_2,u_b7]];
% v11=[[v_b1,v_zero_1,v_b2];[v_b3,v_b4,v_b5];[v_b6,v_zero_2,v_b7]];
u=[[u_b1,u_b2,u_b4,u_b9];[u_b5,u_b7,u_b8,u_b10]];
v=[[v_b1,u_b2,v_b4,v_b9];[v_b5,v_b7,v_b8,v_b10]];

uu{n_snapshot,1}=u;
vv{n_snapshot,1}=v;

t_loop
filename_uv
fclose all;
end

%
%
        %---------------------------------------------
        % reading and reshaping x & y matrices
        %------------------------------------------
        dir_key='0.01';
        filename_xy=[dirname_1b,dir_key,dirname_2a]
        fileID=fopen(filename_xy,'r');
        Intro=textscan(fileID,'%s','Delimiter','\n');

        % block 1
        stl=21; edl=1346; % start and end lines
        p1=51; p2=26; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b1=reshape(ai(:,1),[p1,p2]);
        y_b1=reshape(ai(:,2),[p1,p2]);

        % block 2
        stl=2673; edl=3998;
        p1=51; p2=26; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b2=reshape(ai(:,1),[p1,p2]);
        y_b2=reshape(ai(:,2),[p1,p2]);

        % % block 3
        % stl=4025; edl=4154;
        % p1=6; p2=25; % block size
        % ai=[];
        % for i=stl:edl
        % RelevantLine=Intro{1}{i};
        % ai=[ai;str2num(RelevantLine(2:end-1))];
        % end
        % x_b3=reshape(ai(:,1),[p1,p2]);
        % y_b3=reshape(ai(:,2),[p1,p2]);

        % block 4
        stl=5585; edl=8834;
        p1=125; p2=26; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b4=reshape(ai(:,1),[p1,p2]);
        y_b4=reshape(ai(:,2),[p1,p2]);


        % block 5
        stl=12085; edl=13359;
        p1=51; p2=25; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b5=reshape(ai(:,1),[p1,p2]);
        y_b5=reshape(ai(:,2),[p1,p2]);

        % % block 6
        % stl=14115; edl=14243;
        % p1=5; p2=26; % block size
        % ai=[];
        % for i=stl:edl
        % RelevantLine=Intro{1}{i};
        % ai=[ai;str2num(RelevantLine(2:end-1))];
        % end
        % x_b6=reshape(ai(:,1),[p1,p2]);
        % y_b6=reshape(ai(:,2),[p1,p2]);

        % block 7
        stl=14893; edl=16142;
        p1=50; p2=25; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b7=reshape(ai(:,1),[p1,p2]);
        y_b7=reshape(ai(:,2),[p1,p2]);

        % block 8
        stl=17393; edl=20542;
        p1=126; p2=25; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b8=reshape(ai(:,1),[p1,p2]);
        y_b8=reshape(ai(:,2),[p1,p2]);

        % block 9
        stl=23693; edl=26292;
        p1=100; p2=26; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b9=reshape(ai(:,1),[p1,p2]);
        y_b9=reshape(ai(:,2),[p1,p2]);

        % block 10
        stl=27873; edl=30372;
        p1=100; p2=25; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b10=reshape(ai(:,1),[p1,p2]);
        y_b10=reshape(ai(:,2),[p1,p2]);


        % % constrcut x and y matrices
        x_b1=x_b1'; y_b1=y_b1';
        x_b2=x_b2'; y_b2=y_b2';
        % x_b6=x_b6'; y_b6=y_b6';
         x_b7=x_b7'; y_b7=y_b7';
        %
        % x_b3=x_b3'; y_b3=y_b3';
        x_b5=x_b5'; y_b5=y_b5';
        %
        x_b4=x_b4'; y_b4=y_b4';
        x_b8=x_b8'; y_b8=y_b8';
        x_b9=x_b9'; y_b9=y_b9';
        x_b10=x_b10'; y_b10=y_b10';


        % size(x_b1(2:end,2:end))
        % size(x_b2(2:end,2:end))
        % size(x_b4(2:end,1:end))
        % size(x_b5(1:end,2:end))
        % size(x_b7(1:end,1:end))
        % size(x_b8(1:end,2:end))
        % size(x_b9(2:end,1:end))
        % size(x_b10(1:end,1:end))



        % check-------------
        % x=[[x_b1(2:end,2:end),x_b2(2:end,2:end)];[x_b6(1:end,2:end),x_b7(1:end,1:end-1)]];
        % y=[[y_b1(2:end,2:end),y_b2(2:end,2:end)];[y_b6(1:end,2:end),y_b7(1:end,1:end-1)]];
        %
        % check-------------
         x=[[x_b1(2:end,2:end),x_b2(2:end,2:end),x_b4(2:end,1:end),x_b9(2:end,1:end)];[x_b5(1:end,2:end),x_b7(1:end,1:end),x_b8(1:end,2:end),x_b10(1:end,1:end)]];
         y=[[y_b1(2:end,2:end),y_b2(2:end,2:end),y_b4(2:end,1:end),y_b9(2:end,1:end)];[y_b5(1:end,2:end),y_b7(1:end,1:end),y_b8(1:end,2:end),y_b10(1:end,1:end)]];
        %

save(['uv_',CaseNo,CaseID,'.mat'],'x','y','uu','vv');

fclose all;
end