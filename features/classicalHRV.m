function [HRV] = getclassicalHRV(phi_eIntervals)
% Calculates classical Heart Rate Variabiliry (HRV) measures:
% SDNN, Vagal Trend. Vagal Tone, mean value of RR and mean value of HR
% RMSSD, NN50, pNN50
% input: Intervals between beats (RR intervals)
% author: Cagdas Topcu MSc.

%% init values
HRV.SDNN = 0;
HRV.vagalTrend = 0;
HRV.vagalTone = 0;
HRV.meanRR = 0:
HRV.meanHR = 0;
HRV.RMSSD = 0;
HRV.NN50 = 0;
HRV.pNN50 = 0;

%% Standard deviation of RR

SDNN = std(phi_eIntervals); %msec


%% Vagal Trend

vagalTrend = diff(phi_eIntervals); %msec.

%% Vagal Tone

vagalTone = log10(abs(median(vagalTrend_phi_e)));

%% mean RR and mean HR

meanRR = mean(phi_eIntervals); %msec.
meanHR = mean(60000./phi_eIntervals);

%% RMSSD

RMSSD = sqrt(mean(diff(phi_eIntervals).*diff(phi_eIntervals)));

%% NN50

alpha = 50; %ms

NN50 = sum( abs(diff(phi_eIntervals)) >= alpha);

%% PPNAlpha PPN50
alpha = 50; %ms

pNN50 = sum( abs(diff(phi_eIntervals)) >= alpha)/length(diff(phi_eIntervals));

