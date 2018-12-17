%filtro,segmenta��o e janelamento
N=8000;%n�mero de amostras por segundo
H=N/50;%pontos do janelamento correspondendo a 20ms de amostras
coef=[1 .95];%coeficientes do filtro
amostras=matrizdeamostra;
ham=hamming(H);%janela de Hamming
i=1;
%sinais de voz ap�s passar pelo filtro
%amostras(1:40000,j)=filter(coef,1,matrizdeamostra(1:40000,j)); 
   

for j=1:64
amostras(1:40000,j)=filter(coef,1,amostras(1:40000,j));    


for k=161:39840
 %Cria��o do janelamento de Hamming com sobreposi��o de 50% dos segmentos
   amostras(k,j)=amostras(k,j)*(ham(i)+ham(H/2+i));
   
   i=i+1;
   if i>H/2
       i=1;
   end
end
end



%wvtool(amostras(1:40000,1));% plot do sinal janelado e segmentado