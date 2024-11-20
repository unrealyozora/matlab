clear all
clc

%Preallocamento
I=zeros(1,26);

%Inizializzazione della formula ricorsiva
I(1) = (exp(1)-1)/exp(1);

%Calcolo integrale con formula ricorsiva
for i=2:26
    I(i)=1-(i-1)*I(i-1);
end

%Grafico in scala semilogaritmica
figure(1)
semilogy(1:26, I, 'r-o')