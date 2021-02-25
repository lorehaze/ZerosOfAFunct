close all;

L=[1,0,0;-2,1,0;2,1,1];

b=[-1;0;1];

[x]=forward(L,b)

U=[-1,1,3;0,1,8;0,0,-16];

[x]=matricebackward(U,b)