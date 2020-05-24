function Hd = IIR_LP_ChebshevT2
%IIR_LP_CHEBSHEVT2 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 27-Feb-2020 14:49:19

% Chebyshev Type II Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in kHz.
Fs = 80;  % Sampling Frequency

N     = 6;    % Order
Fstop = 2.5;  % Stopband Frequency
Astop = 80;   % Stopband Attenuation (dB)

% Construct an FDESIGN object and call its CHEBY2 method.
h  = fdesign.lowpass('N,Fst,Ast', N, Fstop, Astop, Fs);
Hd = design(h, 'cheby2');

% [EOF]
