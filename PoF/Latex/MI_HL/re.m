clear all;

CaseNo='1';
CaseID='S';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_Sc100_zeroGrad',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');


CaseNo='6';
CaseID='D';

load(['t_',CaseNo,CaseID,'_100.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'_100.mat'],'x','y','t11','t22','t33');


CaseNo='N';
CaseID='S';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');


tic; file_tag=['4p1S']
load(['t_',file_tag,'.mat'])
t11_4D_4p1S=cat(3,t11{t1:t2,:});  %4D Matrix data
t11_4p1S_mean=mean(t11_4D_4p1S,3);     %
var_4p1S=sqrt(mean((t11_4p1S_mean-0.5).^2));    %row wise mean
M_4p1S=1-sqrt((var_4p1S.^2)./(max(var_4p1S)^2));      clear t11* var*; toc;

return;


CaseNo='5';
CaseID='A';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');
clear all;

CaseNo='5';
CaseID='B';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');
clear all;

CaseNo='5';
CaseID='C';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');
clear all;

CaseNo='5';
CaseID='D';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');
clear all;

CaseNo='5';
CaseID='E';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');
clear all;

CaseNo='5';
CaseID='F';

load(['t_',CaseNo,CaseID,'2.mat'])
t22=t22(4001:8000)
t33=t33(8001:12000)

save(['t_',CaseNo,CaseID,'.mat'],'x','y','t11','t22','t33');
clear all;
