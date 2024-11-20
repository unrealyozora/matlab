epsilon=1e-15;
for n= 2:20:2
    z=linspace(-1,1,n);
    V=vander(z);
    A=V+epsilon*eye(n);
    b=A*ones(n,1);
    [Lnopiv, Unopiv]=LUnoPiv(A);
    [L,U,P]=lu(A);
    y=L\(P*b);
    x=U\y;
    y_nopiv=Lnopiv\b;
    x_nopiv=U\y_nopiv;
    err_sol(n/2)=norm(x-ones(n,1));
    err_solNoPiv(n/2)=norm(x_nopiv - ones(n,1));
    err_U(n/2)=norm(U-t)

