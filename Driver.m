load_data
Fs=512;
channel=16;
%spectData=S1(:,16);
fAxis = 0:1/6:(Fs-1/6);
L=6*Fs;
%spectrumData = mean(abs(fft(spectData)),1);
%figure; plot(fAxis,log10(spectrumData));
eye_closed=eye_close(SIGNAL,Fs);
eye_opened=eye_open(SIGNAL,Fs);
spectData=zeros(3073,1);
spectData2=zeros(3073,1);
for i=1:5
    spectData=spectData+S2(eye_opened(2):(eye_opened(2)+6*Fs),16);
    spectData2=spectData2+S2(eye_closed(4):(eye_closed(4)+6*Fs),16);
end
n=nextpow2(L);
spectrumData = abs(fft(spectData/5));
spectrumData2= abs(fft(spectData2/5));

hold on;
plot(1:3073,log10(spectrumData),'red');
plot(1:3073,log10(spectrumData2),'blue');
hold off
