syms x
f = -(0.1*x^4)-(0.15*x^3)-(0.5*x^2)-(0.25*x)+1.2
h =1
xi = 0
xi1 = 1
res0 = subs(f,x,xi)
fplot(f)
ezplot(f)
ezplot(res0)
ezplot(f)
hold on
ezplot(res0)
deri1 = diff(f)
h
res1 = subs(deri1,x,xi)
res1 = res1*h
taylor = res0 + res1
poli = f(xi) + deri1(xi)*h
poli = f + deri1*h
hold on
ezplot(taylor)
deri2 = diff(deri1)
res2 = subs(deri2,x,xi)
res2 = res2/factorial(2)
res2 = res2 * h^2
taylor= taylor + res2
deri3 = diff(deri2)
res3 = subs(deri3,x,xi)
res3 = res3/factorial(3)
res3 = res3 * h^3
ea = (res3 - res2)/res3
ea = ea * 100
ea = ea / 100
hold on
ezplot(res3)
hold of
hold off
ezplot(f)
poli = f(x)
poli = f
poli = res0
hold on
ezplot(poli)
poli = poli + diff(f)*h
hold on
ezplot(poli)
poli = poli + deri2*h^2
hold on
ezplot(poli)
poli = poli - deri2*h^2
poli = poli + (deri2/factorial(2))*h^2
hold on
ezplot(poli)
poli = poli + (deri3/factorial(3))*h^3
hold on
ezplot(poli)
g = cos(x)
iter0 = subs(g,x,pi/3)
taylor = iter0
der1 = diff(g)
iter0 = subs(g,x,pi/4)
taylor = iter0
h = pi/12
iter1 = subs(der1,x,pi/4)
taylor = taylor + iter1
der2 = diff(der1)
iter2 = subs(der2,x,pi/4)
der3 = diff(der2)
der4 = diff(der3)
der5 = diff(der4)
der6 = diff(der5)
der7 = diff(der6)
iter2 = iter2/factorial(2)
iter2 = iter2 * h^2
h
taylor = taylor + iter2