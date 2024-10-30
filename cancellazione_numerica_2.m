clear all;
clc;

%Dichiaro le variabili
p=4.999999999995 * 10^4;
q=10^-2;
sol_esatta=10^-7;

%Algoritmo 1
rad=sqrt(p^2+q);
alg1=-p+rad;

%Algoritmo 2
alg2=q/(p+rad);

%Stampo i risultati
fprintf('\n \t Soluzione del primo algoritmo: %10.19f', alg1);
fprintf('\n \t Soluzione del secondo algoritmo: %10.19f', alg2);

%Errori
err1= abs(alg1-sol_esatta)/abs(sol_esatta);
err2= abs(alg2-sol_esatta)/abs(sol_esatta);
fprintf('\n \t Errore relativo del primo algoritmo: %2.2e', err1);
fprintf('\n \t Errore relativo del secondo algoritmo: %2.2e', err2);