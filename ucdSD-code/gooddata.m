
clear 
close all
%% 删除 认为不好的片段   (修改ucd000)
load('ucd019_stagewake.mat')
load('ucd019_stagedeep.mat')
load('ucd019_stagemix.mat')

load('ucd019_wakebad.mat')
load('ucd019_deepbad.mat')
load('ucd019_mixbad.mat')

ucd019_mix_g = [];
if (~isempty(ucd019_mixbad)) && (~isempty(ucd019_stagemix))
    ucd019_mix_g = ucd019_stagemix;    
    ucd019_mix_g(ucd019_mixbad,:) = [];
elseif isempty(ucd019_mixbad)
    ucd019_mix_g = ucd019_stagemix; 
end
save('ucd019_mix_g.mat','ucd019_mix_g');

ucd019_deep_g = [];
if (~isempty(ucd019_deepbad)) && (~isempty(ucd019_stagedeep))
    ucd019_deep_g = ucd019_stagedeep;    
    ucd019_deep_g(ucd019_deepbad,:) = [];
elseif isempty(ucd019_deepbad)
    ucd019_deep_g = ucd019_stagedeep; 
end
save('ucd019_deep_g.mat','ucd019_deep_g');

ucd019_wake_g = [];
if (~isempty(ucd019_wakebad)) && (~isempty(ucd019_stagewake))
    ucd019_wake_g = ucd019_stagewake;    
    ucd019_wake_g(ucd019_wakebad,:) = [];
elseif isempty(ucd019_wakebad)
    ucd019_wake_g = ucd019_stagewake; 
end
save('ucd019_wake_g.mat','ucd019_wake_g');

