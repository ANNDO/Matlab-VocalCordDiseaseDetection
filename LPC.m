%gera��o de coeficientes de predi��o e c�culo do erro
matrizdepredicao=amostras;

matrizdepredicao=lpc(matrizdepredicao,12)';%matriz com os coeficientes de predi��o

%est_amostras=filter([0 -coef_pred(2:end)],1,amostras);% resposta do filtro para a entrada amostras.
%erro=amostras-est_amostras;
%t=0:1/8000:5-1/8000;
%figure(3);
%plot(t,erro);


%grid on;    
%title('Erro de Predi��o');
%xlabel('Tempo(s)');
%ylabel('Magnitude');    