
clear 
close all

%%   修改ucd000   mix mix mix
%%  --挑选出好的数据,一张一张图去看-----------一次性显示全部时间窗
load('ucd019_stagemix.mat');
for i=1:size(ucd019_stagemix(301:585,:),1) %修改数量
%     subplot(5,1,i),
    figure,
    set (gcf,'Position',[100,100,1800,300], 'color','w')
    plot(ucd019_stagemix((i),:));
    axis([-100,4000,-2,2]);
end

% ucd019_mixbad=0;
% save('ucd019_mixbad', 'ucd019_mixbad'); %

%% ----每一个时间窗单独查看---------------------------------------------
% while 1
% i = input('input:');
% figure,
% data = ucd022_stagemix(i,:);
% set (gcf,'Position',[50,100,1800,300], 'color','w')
% plot(data);
% axis([-100,4000,-2,2]);
% 
% figure
% set (gcf,'Position',[50,500,1800,300], 'color','w')
% pwelch(data,[],[],[],128);
% 
% dataf = ucdfilter(data,5);  % 滤波 
% figure,
% set (gcf,'Position',[50,1000,1800,300], 'color','w')
% plot(dataf)
% 
% figure,
% % pwelch(dataf,[],[],[],128);
% 
% dataf = ucdfilter(data,6);  % 滤波 
% figure(10),
% set (gcf,'Position',[50,1000,1800,300], 'color','w')
% plot(dataf)
% end

