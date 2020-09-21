load_data;
Fs=512;
tapers = [3 5];
mtmParams.Fs = Fs;
mtmParams.tapers = tapers;
mtmParams.trialave=0;
mtmParams.err=0;
mtmParams.pad=-1;
eye_open_data=eye_open(S12,Fs);
eye_close_data=eye_close(S12,Fs);
eye_open_data=eye_open_data/Fs - 6;
eye_close_data=eye_close_data/Fs - 6;

movingWin = [3 0.5];
[SRawBL,~,~]=mtspecgramc(S12(1:4*Fs,16),movingWin,mtmParams);
[SRaw,tspec,fspec]=mtspecgramc(S12(4*Fs:end,16),movingWin,mtmParams);
plot_spectrogram(SRaw,SRawBL,fspec,tspec);
hold on;
for i=1:5
    xline(eye_open_data(i),'-','open');
    xline(eye_close_data(i),'-.','close');
end
yline(8,'black');
yline(12,'black','Alpha Band');
hold off



% Strong- 7
% Mild - 8