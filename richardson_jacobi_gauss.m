n=50;
A=zeros(n);
b=linspace(1,n,n);
x0=zeros(n,1)
tol=1e-8;
itmax=200;
for i=1:n
    for j=1:n
        if i==j
            A(i,j)= 1;
        elseif j==i+1
            A(i,j)=-1/3;
        elseif j==i-1
            A(i,j)=1/3;
        end
    end
end
[x_rich, err_rich, iter_rich]=richardson(A,x0,b,itmax,tol);
[x_jacobi, err_jacobi, iter_jacobi]=jacobi(A,x0,b,itmax,tol);
[x_gauss, err_gauss, iter_gauss]=gauss_seidel(A,x0,b,itmax,tol);

fprintf("Iterazioni metodo di Richardson= %3.0f \n", iter_rich);
fprintf("Iterazioni metodo di Jacobi= %3.0f \n", iter_jacobi);
fprintf("Iterazioni metodo di Gauss= %3.0f \n", iter_gauss);

MaxConvergenzaRich=max(abs(1-eig(x_rich)));
MaxConvergenzaJacobi=max(abs(1-eig(x_jacobi)));
MaxConvergenzaGauss=max(abs(1-eig(x_gauss)));

fprintf("Massimo Rich = %3.10e \n", MaxConvergenzaRich);
fprintf("Massimo Jacobi = %3.10e \n", MaxConvergenzaJacobi);
fprintf("Massimo Gauss = %3.10e \n", MaxConvergenzaGauss);