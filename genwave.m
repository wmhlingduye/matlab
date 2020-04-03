function y=genwave(tone,rythm)
Fs=44100;
freqs=[131,146,164,174,196,220,247,261,293,329,349,392,440,493,523,587,659,698,783,880,987];
x=linspace(0,2*pi*rythm,floor(Fs*rythm));
y=sin(freqs(tone)*x).*(1-x/(rythm*2*pi));
end

