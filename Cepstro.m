%Cepstro
q=0:1/8000:.020;
qm=1000*q;%vetor quefrência em milissegundos
cepstrum_real=rceps(amostras);
figure (3);
plot(qm,cepstrum_real(1:161));
title('Cepstro');
xlabel('Quefrência(ms)');
ylabel('Magnitude');
grid on;