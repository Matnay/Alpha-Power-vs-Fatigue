%% Setting Default Info %%
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

%Create Structures
Create_Struct;

%% Subject Wise

%% Subject 1


%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S1,Fs);
eye_opened=eye_open(S1,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;
spec_open_avg=0; spec_close_avg=0;

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S1(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S1(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          
    
    spec_open_avg=spec_open_avg+spectrumDataopen;     
    spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject1.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject1.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(1,1)=(open_avg/5);
AlphaPower.AllSubjAvg(1,2)=(close_avg/5);

%% Subject 2

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S2,Fs);
eye_opened=eye_open(S2,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S2(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S2(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));

     
    spec_open_avg=spec_open_avg+spectrumDataopen;
    spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject2.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject2.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(2,1)=(calculate_alpha_power(spec_open_avg/5,fAxis));
AlphaPower.AllSubjAvg(2,2)=(calculate_alpha_power(spec_close_avg/5,fAxis));

figure(1);
hold on;
plot(fAxis,log10(spec_open_avg/5),'red');
xlim([0 40]);ylim([2 6]);
plot(fAxis,log10(spec_close_avg/5),'blue');
xlim([0 40]);ylim([2 6]);
hold off;


%% Subject 3

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S3,Fs);
eye_opened=eye_open(S3,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S3(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S3(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));  
    
    spec_open_avg=spec_open_avg+spectrumDataopen;     
    spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject3.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject3.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(3,1)=(open_avg/5);
AlphaPower.AllSubjAvg(3,2)=(close_avg/5);

%% Subject 4

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S4,Fs);
eye_opened=eye_open(S4,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S4(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S4(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          
    
    spec_open_avg=spec_open_avg+spectrumDataopen;     
    spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject4.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject4.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(4,1)=(open_avg/5);
AlphaPower.AllSubjAvg(4,2)=(close_avg/5);

%% Subject 5

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S5,Fs);
eye_opened=eye_open(S5,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S5(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S5(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject5.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject5.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(5,1)=(open_avg/5);
AlphaPower.AllSubjAvg(5,2)=(close_avg/5);

%% Subject 6

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S6,Fs);
eye_opened=eye_open(S6,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S6(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S6(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject6.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject6.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(6,1)=(open_avg/5);
AlphaPower.AllSubjAvg(6,2)=(close_avg/5);

%% Subject 7

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S7,Fs);
eye_opened=eye_open(S7,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S7(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S7(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject7.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject7.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(7,1)=(open_avg/5);
AlphaPower.AllSubjAvg(7,2)=(close_avg/5);

%% Subject 8

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S8,Fs);
eye_opened=eye_open(S8,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S8(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S8(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject8.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject8.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(8,1)=(open_avg/5);
AlphaPower.AllSubjAvg(8,2)=(close_avg/5);

%% Subject 9

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S9,Fs);
eye_opened=eye_open(S9,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S9(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S9(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject9.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject9.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(9,1)=(open_avg/5);
AlphaPower.AllSubjAvg(9,2)=(close_avg/5);

%% Subject 10

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S10,Fs);
eye_opened=eye_open(S10,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S10(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S10(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject10.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject10.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(10,1)=(open_avg/5);
AlphaPower.AllSubjAvg(10,2)=(close_avg/5);

%% Subject 11

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S11,Fs);
eye_opened=eye_open(S11,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S11(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S11(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject11.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject11.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(11,1)=(open_avg/5);
AlphaPower.AllSubjAvg(11,2)=(close_avg/5);

%% Subject 12

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S12,Fs);
eye_opened=eye_open(S12,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S12(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S12(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject12.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject12.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(12,1)=(open_avg/5);
AlphaPower.AllSubjAvg(12,2)=(close_avg/5);

%% Subject 13

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S13,Fs);
eye_opened=eye_open(S13,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S13(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S13(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject13.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject13.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(13,1)=(open_avg/5);
AlphaPower.AllSubjAvg(13,2)=(close_avg/5);

%% Subject 14

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S14,Fs);
eye_opened=eye_open(S14,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S14(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S14(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject14.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject14.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(14,1)=(open_avg/5);
AlphaPower.AllSubjAvg(14,2)=(close_avg/5);

%% Subject 15

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S15,Fs);
eye_opened=eye_open(S15,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S15(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S15(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject15.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject15.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(15,1)=(open_avg/5);
AlphaPower.AllSubjAvg(15,2)=(close_avg/5);

%% Subject 6

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S16,Fs);
eye_opened=eye_open(S16,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S16(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S16(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject16.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject16.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(16,1)=(open_avg/5);
AlphaPower.AllSubjAvg(16,2)=(close_avg/5);

%% Subject 17

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S17,Fs);
eye_opened=eye_open(S17,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S17(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S17(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject17.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject17.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(17,1)=(open_avg/5);
AlphaPower.AllSubjAvg(17,2)=(close_avg/5);

%% Subject 18

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S18,Fs);
eye_opened=eye_open(S18,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S18(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S18(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject18.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject18.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(18,1)=(open_avg/5);
AlphaPower.AllSubjAvg(18,2)=(close_avg/5);

%% Subject 19

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S19,Fs);
eye_opened=eye_open(S19,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S19(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S19(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject19.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject19.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(19,1)=(open_avg/5);
AlphaPower.AllSubjAvg(19,2)=(close_avg/5);

%% Subject 20

%Initializing the spectrum data to be extracted with zeros
spectDataopen=zeros(6*Fs,1);
spectDataclose=zeros(6*Fs,1);

%Functions to determine Onset of the Stimulus
eye_closed=eye_close(S20,Fs);
eye_opened=eye_open(S20,Fs);

%Average Eye Open and close
open_avg=0; close_avg=0; spec_open_avg=0; spec_close_avg=0;

%The subjects data
for i=1:5
    %Extracting the data
    spectDataopen=S20(eye_opened(i):(eye_opened(i)+6*Fs-1),channel);
    spectDataclose=S20(eye_closed(i):(eye_closed(i)+6*Fs-1),channel);
    
    %Finding the PSD of the sampled Data
    spectrumDataopen = abs(fft(spectDataopen));
    spectrumDataclose= abs(fft(spectDataclose));          spec_open_avg=spec_open_avg+spectrumDataopen;     spec_close_avg=spec_close_avg+spectrumDataclose;
    
    open_avg=calculate_alpha_power(spectrumDataopen,fAxis)+open_avg;
    close_avg=calculate_alpha_power(spectrumDataclose,fAxis)+close_avg;
    
    AlphaPower.Subject20.open(i,1)=calculate_alpha_power(spectrumDataopen,fAxis);
    AlphaPower.Subject20.close(i,1)=calculate_alpha_power(spectrumDataclose,fAxis);
end

AlphaPower.AllSubjAvg(20,1)=(open_avg/5);
AlphaPower.AllSubjAvg(20,2)=(close_avg/5);

figure(2);
bar(AlphaPower.AllSubjAvg);

