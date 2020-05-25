# PhysioFeat
PhysioFeat is a collection of feature extraction methods. These signal processing methods can be applied on non-stationary physiological signals such as electromyography (EMG), electrocardiography (ECG) and electroencephalography (EEG).

# Functions

[HRV] = getclassicalHRV(phi_eIntervals)
Calculates classical Heart Rate Variabiliry (HRV) measures:
SDNN, Vagal Trend. Vagal Tone, mean value of RR and mean value of HR
RMSSD, NN50, pNN50
input: Intervals between beats (RR intervals)

[VLF, LF, HF, LFHFratio, nLF, nHF] = getFreqFeaturesHRV(f,PSD)      
Calculates very low, low and high frequency components of Heart Rate
and LF/HF ratio
inputs
PSD: power spectrum density
f: frequency values which used to calculate power spectrum

feat = getrecewpcdb5feat(x,winsize,wininc,datawin,dispstatus)
Calculates energy of wavelet packets of non-stationary signals (Electromyography - EMG)
x is data/signal
datawin = hamming(winsize);
