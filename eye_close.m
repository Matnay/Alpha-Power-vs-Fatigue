function eye_close_data=eye_close(Signal,Fs)
%Time after which data has to be start collecting defatult =2
eye_close_data=find(Signal(:,18)==1);
eye_close_data=eye_close_data+2*Fs;
end