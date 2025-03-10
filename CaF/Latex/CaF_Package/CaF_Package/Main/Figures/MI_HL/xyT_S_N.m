clear all;
close all;
fclose all;
clc;

Case=["Na","Nb","Nc","Nd","Ne"];

%      

[r,c]=size(Case)

for i=1:1
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

dirname_1b=['/media/magcyan/ssdT7/N',file_tag,'/fluid/'];
% dirname_1b=['/media/magcyan/cut60/dbl_fil_scalar/',file_tag,'/fluid/'];

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
dirname_2b='/T2';
filename_uv=[dirname_1b,dir_key,dirname_2b];

fileID=fopen(filename_uv,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

% block 1
stl=23; edl=7522; % start and end lines
p1=300; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b1=reshape(ai(:),[p1,p2]);

% block 2
stl=7523; edl=15022;
p1=300; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b2=reshape(ai(:),[p1,p2]);


% constrcut x and y matrices
t2_b1=t2_b1'; 
t2_b2=t2_b2'; 


%u_zero_1=zeros(50,8); u_zero_2=zeros(50,8);v_zero_1=zeros(50,8); v_zero_2=zeros(50,8);
% u11=[[u_b1,u_zero_1,u_b2];[u_b3,u_b4,u_b5];[u_b6,u_zero_2,u_b7]];
% v11=[[v_b1,v_zero_1,v_b2];[v_b3,v_b4,v_b5];[v_b6,v_zero_2,v_b7]];
t2=[[t2_b1];[t2_b2]];

t22{n_snapshot,1}=t2;


t_loop
filename_uv
fclose all;
end



n_snapshot=0;  % count variable
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
dirname_2b='/p';
filename_uv=[dirname_1b,dir_key,dirname_2b];

fileID=fopen(filename_uv,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

% block 1
stl=23; edl=7522; % start and end lines
p1=300; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
p_b1=reshape(ai(:),[p1,p2]);

% block 2
stl=7523; edl=15022;
p1=300; p2=25; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
p_b2=reshape(ai(:),[p1,p2]);


% constrcut x and y matrices
p_b1=p_b1'; 
p_b2=p_b2'; 

%u_zero_1=zeros(50,8); u_zero_2=zeros(50,8);v_zero_1=zeros(50,8); v_zero_2=zeros(50,8);
% u11=[[u_b1,u_zero_1,u_b2];[u_b3,u_b4,u_b5];[u_b6,u_zero_2,u_b7]];
% v11=[[v_b1,v_zero_1,v_b2];[v_b3,v_b4,v_b5];[v_b6,v_zero_2,v_b7]];
p=[[p_b1];[p_b2]];

pp{n_snapshot,1}=p;


t_loop
filename_uv
fclose all;
end


        %---------------------------------------------
        % reading and reshaping x & y matrices
        %------------------------------------------
        dir_key='0.01';
        filename_xy=[dirname_1b,dir_key,dirname_2a]
        fileID=fopen(filename_xy,'r');
        Intro=textscan(fileID,'%s','Delimiter','\n');

        % block 1
        stl=21; edl=7846; % start and end lines
        p1=301; p2=26; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b1=reshape(ai(:,1),[p1,p2]);
        y_b1=reshape(ai(:,2),[p1,p2]);

        % block 2
        stl=15673; edl=23197;
        p1=301; p2=25; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b2=reshape(ai(:,1),[p1,p2]);
        y_b2=reshape(ai(:,2),[p1,p2]);


        % % constrcut x and y matrices
        x_b1=x_b1'; y_b1=y_b1';
        x_b2=x_b2'; y_b2=y_b2';

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
         x=[[x_b1(2:end,2:end)];[x_b2(1:end,2:end)]];
         y=[[y_b1(2:end,2:end)];[y_b2(1:end,2:end)]];
        %

save(['pt2_',CaseNo,CaseID,'.mat'],'x','y','pp','t22');
% save(['pt_',CaseNo,CaseID,'.mat'],'x','y','pp','t11','t22','t33');

fclose all;
end