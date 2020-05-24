function Hd = IIR_LP_ChebshevT1
%IIR_LP_CHEBSHEVT1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 27-Feb-2020 14:49:00

% Chebyshev Type I Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in kHz.
Fs = 80;  % Sampling Frequency

N     = 6;    % Order
Fpass = 2.5;  % Passband Frequency
Apass = 1;    % Passband Ripple (dB)

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.lowpass('N,Fp,Ap', N, Fpass, Apass, Fs);
Hd = design(h, 'cheby1');

% [EOF]
