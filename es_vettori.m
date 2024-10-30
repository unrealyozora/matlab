v=linspace(0,1,5);
u=[1,2,3,4,5];
w=ones(1,5)*4;
p=u * v';
z=w*p;
A=[0,2,-1,2,0;1,1,1,0,0];
res=A*z';
disp(res) % controllare fprintf syntax