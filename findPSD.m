function psd_signal= findPSD(dataToAnalyse)
psd_signal=abs(fft(dataToAnalyse));
end
