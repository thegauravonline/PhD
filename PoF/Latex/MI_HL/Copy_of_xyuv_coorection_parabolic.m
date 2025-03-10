% clear all;
close all;
fclose all;
clc;

% Case=["1A" ,"1B","1C","1D" ,"1E" ,"1F", "1S"...
%     "2A", "2B" ,"2C", "2D", "2E", "2F", "2S"...
%     "3A", "3B", "3C", "3D", "3E" ,"3F" ,"3S"...
%     "4A", "4B", "4C", "4D", "4E" ,"4F" ,"4S"...
%     "5A", "5B" ,"5C", "5D" ,"5E", "5F", "5S"...
%     "6A", "6B" ,"6C" "6D", "6E" ,"6F" ,"6S"];
% 
% %      
% 
% [r,c]=size(Case);
%    
% for i=42:c
%     i
% Case
%  str=convertStringsToChars(Case(i));
% % str(1)
% % str(2)
% load(['uv_',str,'.mat']);
% % x=xxx; y=yyy;
% save(['uv_',str,'.mat'],'x','y','uu','vv');
%  fclose all;
% 
% end
% return;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% time information
%-----------------
t_start=4000; t_end=5000; t_jump=100;   % change it to see different times
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
CaseNo='1';
CaseID='S';
;
file_tag=[CaseNo,'/',CaseNo,CaseID]

%
fsh=8;                                 % #of points in horizontal direction of filament
%
%------------------------------
% change them for each Case
% x & y info: Gaurav
%------------------------------
%
 dirname_1a=['/media/magcyan/conti1_4tb_12/Ca_extra_sim/',file_tag,'/fluid/'];

 dirname_1a=['~/Documents/5S_Re100/fluid/'];
 dirname_2a='/polyMesh/points';
% u & v info
% if (CaseNo=='2')
%     CaseNo
%     dirname_1b=['/media/magcyan/Disk_1/Gaurav/Article2/',file_tag,'/fluid/'];
% 
% elseif (CaseNo=='6')
%     CaseNo
%     dirname_1b=['/media/magcyan/Disk_1/Gaurav/Article2/',file_tag,'/fluid/'];
% else
% dirname_1b=['/media/magcyan/cut30/runLong/',file_tag,'/fluid/'];
% end
% dirname_2b='/U';
% dirname_2a='/polyMesh/points';
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


       %---------------------------------------------
        % reading and reshaping x & y matrices
        %------------------------------------------
%          dir_key='0.01';
        filename_xy=[dirname_1a,dir_key,dirname_2a]
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
         xxx=[[x_b1(2:end,2:end),x_b2(2:end,2:end)];[x_b3(1:end,2:end),x_b5(1:end,1:end)];[x_b6(1:end,2:end),x_b7(1:end,2:end)]];
         yyy=[[y_b1(2:end,2:end),y_b2(2:end,2:end)];[y_b3(1:end,2:end),y_b5(1:end,1:end)];[y_b6(1:end,2:end),y_b7(1:end,2:end)]];
        %

        %
xx{n_snapshot,1}=xxx;
yy{n_snapshot,1}=yyy;

t_loop
fclose all;
end

% load(['uv_',CaseNo,CaseID,'.mat'],'x','y','uu','vv');

%save(['uv_',CaseNo,CaseID,'_parabolic.mat'],'xx','yy','uu','vv');

save(['uv_5S_Re100_parabolic.mat'],'xx','yy','uu','vv');
fclose all;
