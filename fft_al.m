function [out] = fft_al( sinyal )
%FFT_AL Summary of this function goes here
%   Detailed explanation goes here


Fs = 1000;            % Sampling frequency
L=length(sinyal);
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(sinyal,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

                      % Plot single-sided amplitude spectrum.

out(1,:)=f; 
out(2,:)=2*abs(Y(1:NFFT/2+1));

plot(out(1,:),out(2,:));
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')

end

