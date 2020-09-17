%Loading the Data Sets
load_data
%Sampling Frequency=128Hz;
Fs=512;
%Channle to analayze=Oz
channel=16;
%Time for which we want the sample
L=6;
%Calulating the length of Frequency axis
fAxis = 0:1/L:(Fs-1/L);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S2,Fs);
eye_opened=eye_open(S2,Fs);

spectDataopen=zeros(3072,1);
spectDataclose=zeros(3072,1);
for i=1:5
    spectDataopen=spectDataopen+S2(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=spectDataclose+S2(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
end

spectrumDataopen = abs(fft(spectDataopen/5));
spectrumDataclose= abs(fft(spectDataclose/5));

hold on;
plot(fAxis,log10(spectrumDataopen),'red');
plot(fAxis,log10(spectrumDataclose),'blue');
xlim([3 40]);
hold off

