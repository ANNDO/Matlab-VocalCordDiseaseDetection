%Cepstro
q=0:1/8000:.020;
qm=1000*q;%vetor quefr�ncia em milissegundos
cepstrum_real=rceps(amostras);
figure (3);
plot(qm,cepstrum_real(1:161));
title('Cepstro');
xlabel('Quefr�ncia(ms)');
ylabel('Magnitude');
grid on;