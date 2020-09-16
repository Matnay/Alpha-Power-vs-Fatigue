function psd_signal= findPSD(dataToAnalyse)
spectrumData=mean(abs(fft(dataToAnalyse,[],2)),1);
end
