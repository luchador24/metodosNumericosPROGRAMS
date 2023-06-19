function [iter, aprox, error] = mimuller(f, x0, x1, x2, maxit, tol);
syms x;
f1 = matlabFunction(f);
k=0;

    while(k<maxit)
        k=k+1;
        h0 = x1-x0;
        h1 = x2-x1;
        sig0 = (f1(x1)-f1(x0))/(x1-x0);
        sig1 = (f1(x2)-f1(x1))/(x2-x1);

        a=(sig1-sig0)/(h1-h0);
        b=(a*h1)+sig1;
        c=f1(x2);
        rad=sqrt((b^2)-4*a*c);
        if(b>0)
            aprox(k,1) = x2+((-2*c)/(b+rad));
        else
            aprox(k,1) = x2+((-2*c)/(b-rad));
        end

        error(k,1)=abs((aprox(k,1)-x2)/aprox(k,1))*100;
        iter(k,1) = k;
        x0=x1;
        x1=x2;
        x2=double(aprox(k,1));        
    end

myTable =  table(iter, aprox, error);
end