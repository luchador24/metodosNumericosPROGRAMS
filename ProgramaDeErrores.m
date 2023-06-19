iteracion=0;
x=0.5;
anterior = 0;
actual = 0;
ea = 0;
es = 0.001;
disp('Iteracion     Resultado     Error Relativo     Tolerancia')
actual = 1;
ea= ((actual-anterior)/actual)*100;
fprintf('%d            %f              %f                 %f\n', iteracion, actual, ea, es);
iteracion = 1;
anterior = actual;
actual = 1+x;
ea=((actual-anterior)/actual)*100;
fprintf('%d            %f              %f                 %f\n', iteracion, actual, ea, es);
iteracion = 2;
anterior = actual;
while(ea>=es)
    actual = actual+((x^iteracion)/factorial(iteracion));
    ea = ((actual-anterior)/actual)*100;
    fprintf('%d            %f              %f                 %f\n', iteracion, actual, ea, es);
    iteracion = iteracion +1;
    anterior = actual;
end



