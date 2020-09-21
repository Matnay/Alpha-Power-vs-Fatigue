function plot_spectrogram(SRaw_close,SRaw_open,fspec,tspec)
SChange = 10*(log10(SRaw_close) - log10(SRaw_open));
figure; 
pcolor(tspec,fspec,SChange'); 
shading interp; hold on;
ylim([3 30]);

 cBar = colorbar;
 set(gca,'fontsize',12,'fontweight','bold');
 ylabel('Frequency (Hz)','fontsize',12,'fontweight','bold');
 xlabel('Time (s)','fontsize',12,'fontweight','bold');
 title('Demonstrating change in alphapower','fontsize',12,'fontweight','bold'); 
 hold off;
 
 set(cBar,'fontsize',12,'fontweight','bold');
 xlabel(cBar,'dB','fontsize',12,'fontweight','bold');
 ylabel(cBar,'Change in Power','fontsize',12,'fontweight','bold');
hold off;

colormap jet