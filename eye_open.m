function eye_open_data=eye_open(Signal,Fs)
%Time after which data has to be start collecting defatult =2
eye_open_data=find(Signal(:,19)==1);
eye_open_data=eye_open_data+2*Fs;
end