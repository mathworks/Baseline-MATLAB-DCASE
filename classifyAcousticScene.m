function [scene,scores] = classifyAcousticScene(audioSpec)
%classifyAcousticScene Predict acoustic scene
% p = classifyAcousticScene(audioSpec) predicts the underlying acoustic
% scene in the auditory spectrogram, audioSpec.

%#codegen

persistent mynet
if isempty(mynet)
    mynet = coder.loadDeepLearningNetwork('acoustSceneClassificationSmallNetwork.mat');
end

[scene,scores] = classify(mynet,audioSpec);
end