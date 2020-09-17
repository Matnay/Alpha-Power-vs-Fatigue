load_data
Fs=512;
channel=16;
L=6;
fAxis = 0:1/L:(Fs-1/L);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(SIGNAL,Fs);
eye_opened=eye_open(SIGNAL,Fs);

spectDataopen=zeros(3073,1);
spectDataclose=zeros(3073,1);
for i=1:5
    spectDataopen=spectDataopen+S2(eye_opened(i):(eye_opened(i)+6*Fs),channel);
    spectDataclose=spectDataclose+S2(eye_closed(i):(eye_closed(i)+6*Fs),channel);
end

spectrumDataopen = abs(fft(spectDataopen/5));
spectrumDataclose= abs(fft(spectDataclose/5));

hold on;
plot(1:3073,log10(spectrumDataopen),'red');
plot(1:3073,log10(spectrumDataclose),'blue');
xlim([3 40]);
hold off

