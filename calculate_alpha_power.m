function power= calculate_alpha_power(SpectrumData,fAxis)
fInterest=(fAxis>=8 & fAxis<=12);
power=sum(SpectrumData(fInterest));
end

