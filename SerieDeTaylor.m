%%Serie de Taylor
syms x;
f=log(x);
xi=1;
syms xil;
h=(xil-xi);
disp('Orden         Error Relativo Porcentual                Resultado')
res0=subs(f,x,xi);
fprintf(' 0 \t\t')
fprintf('\t\t\t\tNaN\t\t\t\t\t\t\t\t')
disp(res0)

deri1=diff(f);
res1=subs(deri1,x,xi);
res1=res1*h;
et=((res1-res0)/res1)*100;
fprintf(' 1 \t\t')
fprintf('\t\t\t\t%d\t\t\t\t\t\t\t\t', et)
disp(res1)

deri2=diff(deri1);
res2=subs(deri2, x, xi);
res2=res2/factorial(2);
res2=res2*(h^2);
et=((res2-res1)/res2)*100;
fprintf(' 2 \t\t')
disp(et + res2)


deri3=diff(deri2);
res3=subs(deri3,x,xi);
res3=res3*(h^3);
res3=res3/factorial(3);
et=((res3-res2)/res3)*100;
fprintf(' 3 \t\t')
disp(et + res3)

deri4=diff(deri3);
res4=subs(deri4,x,xi);
res4=res4*(h^4);
res4=res4/factorial(4);
et=((res4-res3)/res4)*100;
fprintf(' 4 \t\t')
disp(et + res4)

Taylor= res0+res1+res2+res3+res4

ezplot(f)
hold on
ezplot(Taylor)

