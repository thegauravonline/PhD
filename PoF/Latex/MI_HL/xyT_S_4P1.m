clear all;
close all;
fclose all;
clc;

Case=["1S" ,"2S","3S","4S" ,"5S" ,"6S","4p1S"];

%      

[r,c]=size(Case)
   
for i=7:7
    i
Case
 str=convertStringsToChars(Case(i))
% str(1)
% str(2)

 fclose all;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% time information
%-----------------
t_start=1; t_end=4000; t_jump=1;   % change it to see different times
fac=100; fac_1=10; fac_2=100;          % based on initial wite-up
%
%-----------------------------------------------
% set geometry, velocity and other things
%-----------------------------------------------
h_ref=0.4;                              % channel width
d_ref=0*h_ref;                         % filament gap
L_channel=8*h_ref;                     % channel length
W_channel=h_ref;   
Re=500;Uchar=0.1;
fil_ht=h_ref/2; nu=(Uchar*fil_ht/Re); 
%
%
CaseNo=str(1:3);
CaseID=str(4);
;
file_tag=[CaseNo,'/',CaseNo,CaseID]
%
%
fsh=8;                                 % #of points in horizontal direction of filament
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
dirname_1b=['/media/magcyan/conti1_4tb_1/Ca_extra_sim/',file_tag,'/fluid/'];
end
dirname_2b='/T1';
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
filename_uv=[dirname_1b,dir_key,dirname_2b];

fileID=fopen(filename_uv,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

% block 1
stl=23; edl=4022; % start and end lines
p1=80; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b1=reshape(ai(:),[p1,p2]);

% block 2
stl=4023; edl=18022;
p1=280; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b2=reshape(ai(:),[p1,p2]);


% block 3
stl=18023; edl=19462;
p1=80; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b3=reshape(ai(:),[p1,p2]);


% block 4
stl=19463; edl=19606;
p1=8; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b4=reshape(ai(:),[p1,p2]);

% block 5
stl=19607; edl=24646;
p1=280; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b5=reshape(ai(:),[p1,p2]);


% block 6
stl=24647; edl=28646;
p1=80; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b6=reshape(ai(:),[p1,p2]);


% block 7
stl=28647; edl=42646;
p1=280; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t1_b7=reshape(ai(:),[p1,p2]);



% constrcut x and y matrices
t1_b1=t1_b1'; 
t1_b2=t1_b2'; 
t1_b6=t1_b6'; 
t1_b7=t1_b7'; 
%
t1_b3=t1_b3'; 
t1_b4=t1_b4'; 
t1_b5=t1_b5'; 

%u_zero_1=zeros(50,8); u_zero_2=zeros(50,8);v_zero_1=zeros(50,8); v_zero_2=zeros(50,8);
% u11=[[u_b1,u_zero_1,u_b2];[u_b3,u_b4,u_b5];[u_b6,u_zero_2,u_b7]];
% v11=[[v_b1,v_zero_1,v_b2];[v_b3,v_b4,v_b5];[v_b6,v_zero_2,v_b7]];
t1=[[t1_b1,t1_b2];[t1_b3,t1_b5];[t1_b6,t1_b7]];

t11{n_snapshot,1}=t1;


t_loop
fclose all;

end

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
filename_uv=[dirname_1b,dir_key,'/T2'];

fileID=fopen(filename_uv,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

% block 1
stl=23; edl=4022; % start and end lines
p1=80; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b1=reshape(ai(:),[p1,p2]);

% block 2
stl=4023; edl=18022;
p1=280; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b2=reshape(ai(:),[p1,p2]);


% block 3
stl=18023; edl=19462;
p1=80; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b3=reshape(ai(:),[p1,p2]);


% block 4
stl=19463; edl=19606;
p1=8; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b4=reshape(ai(:),[p1,p2]);

% block 5
stl=19607; edl=24646;
p1=280; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b5=reshape(ai(:),[p1,p2]);


% block 6
stl=24647; edl=28646;
p1=80; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b6=reshape(ai(:),[p1,p2]);


% block 7
stl=28647; edl=42646;
p1=280; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t2_b7=reshape(ai(:),[p1,p2]);



% constrcut x and y matrices
t2_b1=t2_b1'; 
t2_b2=t2_b2'; 
t2_b6=t2_b6'; 
t2_b7=t2_b7'; 
%
t2_b3=t2_b3'; 
t2_b4=t2_b4'; 
t2_b5=t2_b5'; 

%u_zero_1=zeros(50,8); u_zero_2=zeros(50,8);v_zero_1=zeros(50,8); v_zero_2=zeros(50,8);
% u11=[[u_b1,u_zero_1,u_b2];[u_b3,u_b4,u_b5];[u_b6,u_zero_2,u_b7]];
% v11=[[v_b1,v_zero_1,v_b2];[v_b3,v_b4,v_b5];[v_b6,v_zero_2,v_b7]];
t2=[[t2_b1,t2_b2];[t2_b3,t2_b5];[t2_b6,t2_b7]];

t22{n_snapshot,1}=t2;


t_loop
fclose all;

end










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
filename_uv=[dirname_1b,dir_key,'/T3'];

fileID=fopen(filename_uv,'r');
Intro=textscan(fileID,'%s','Delimiter','\n');

% block 1
stl=23; edl=4022; % start and end lines
p1=80; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b1=reshape(ai(:),[p1,p2]);

% block 2
stl=4023; edl=18022;
p1=280; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b2=reshape(ai(:),[p1,p2]);


% block 3
stl=18023; edl=19462;
p1=80; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b3=reshape(ai(:),[p1,p2]);


% block 4
stl=19463; edl=19606;
p1=8; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b4=reshape(ai(:),[p1,p2]);

% block 5
stl=19607; edl=24646;
p1=280; p2=18; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b5=reshape(ai(:),[p1,p2]);


% block 6
stl=24647; edl=28646;
p1=80; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b6=reshape(ai(:),[p1,p2]);


% block 7
stl=28647; edl=42646;
p1=280; p2=50; % block size
ai=[];
for i=stl:edl
RelevantLine=Intro{1}{i};
ai=[ai;str2num(RelevantLine(1:end))];
end
t3_b7=reshape(ai(:),[p1,p2]);



% constrcut x and y matrices
t3_b1=t3_b1'; 
t3_b2=t3_b2'; 
t3_b6=t3_b6'; 
t3_b7=t3_b7'; 
%
t3_b3=t3_b3'; 
t3_b4=t3_b4'; 
t3_b5=t3_b5'; 

%u_zero_1=zeros(50,8); u_zero_2=zeros(50,8);v_zero_1=zeros(50,8); v_zero_2=zeros(50,8);
% u11=[[u_b1,u_zero_1,u_b2];[u_b3,u_b4,u_b5];[u_b6,u_zero_2,u_b7]];
% v11=[[v_b1,v_zero_1,v_b2];[v_b3,v_b4,v_b5];[v_b6,v_zero_2,v_b7]];
t3=[[t3_b1,t3_b2];[t3_b3,t3_b5];[t3_b6,t3_b7]];

t33{n_snapshot,1}=t3;


t_loop
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
        stl=21; edl=4151; % start and end lines
        p1=81; p2=51; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b1=reshape(ai(:,1),[p1,p2]);
        y_b1=reshape(ai(:,2),[p1,p2]);

        % block 2
        stl=8283; edl=22613;
        p1=281; p2=51; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b2=reshape(ai(:,1),[p1,p2]);
        y_b2=reshape(ai(:,2),[p1,p2]);

        % block 3
        stl=36945; edl=38402;
        p1=81; p2=18; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b3=reshape(ai(:,1),[p1,p2]);
        y_b3=reshape(ai(:,2),[p1,p2]);

        % block 4
        stl=39861; edl=40012;
        p1=8; p2=19; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b4=reshape(ai(:,1),[p1,p2]);
        y_b4=reshape(ai(:,2),[p1,p2]);

        % block 5
        stl=40163; edl=45202;
        p1=280; p2=18; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b5=reshape(ai(:,1),[p1,p2]);
        y_b5=reshape(ai(:,2),[p1,p2]);

        % block 6
        stl=50243; edl=54292;
        p1=81; p2=50; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b6=reshape(ai(:,1),[p1,p2]);
        y_b6=reshape(ai(:,2),[p1,p2]);

        % block 7
        stl=58343; edl=72392;
        p1=281; p2=50; % block size
        ai=[];
        for i=stl:edl
        RelevantLine=Intro{1}{i};
        ai=[ai;str2num(RelevantLine(2:end-1))];
        end
        x_b7=reshape(ai(:,1),[p1,p2]);
        y_b7=reshape(ai(:,2),[p1,p2]);



        % % constrcut x and y matrices
        x_b1=x_b1'; y_b1=y_b1';
        x_b2=x_b2'; y_b2=y_b2';
        x_b6=x_b6'; y_b6=y_b6';
        x_b7=x_b7'; y_b7=y_b7';
        %
        x_b3=x_b3'; y_b3=y_b3';
        x_b5=x_b5'; y_b5=y_b5';
        %
        % size(x_b1(2:end,2:end))
        % size(x_b2(2:end,2:end))
        % size(x_b3(1:end,2:end))
        % size(x_b5(1:end,1:end))
        % size(x_b6(1:end,2:end))
        % size(x_b7(1:end,1:end-1))



        % check-------------
        % x=[[x_b1(2:end,2:end),x_b2(2:end,2:end)];[x_b6(1:end,2:end),x_b7(1:end,1:end-1)]];
        % y=[[y_b1(2:end,2:end),y_b2(2:end,2:end)];[y_b6(1:end,2:end),y_b7(1:end,1:end-1)]];
        %
        % check-------------
         x=[[x_b1(2:end,2:end),x_b2(2:end,2:end)];[x_b3(1:end,2:end),x_b5(1:end,1:end)];[x_b6(1:end,2:end),x_b7(1:end,2:end)]];
         y=[[y_b1(2:end,2:end),y_b2(2:end,2:end)];[y_b3(1:end,2:end),y_b5(1:end,1:end)];[y_b6(1:end,2:end),y_b7(1:end,2:end)]];
        %


save(['t_',CaseNo,CaseID,'2.mat'],'x','y','t11','t22','t33');

fclose all;
% end
