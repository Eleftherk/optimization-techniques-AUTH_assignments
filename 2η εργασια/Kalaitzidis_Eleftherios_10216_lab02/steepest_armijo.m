function [xk,k,shm] = steepest_armijo(f,x1,s)
% s arxiko vhma  
e=0.01;
k=1;
xk=x1;
syms x y
% a anhkei[10^-5,10^-1]
% b anhkei[1/10,1/2]
a=5*10^-2;
b=0.3;
while true
    shm(k,:) = xk;
    p=vpa(subs(jacobian(f),[x y],xk));
    g=norm(p);

    if g<e
        break
    
    else 
        dk=-p;
        
        %gk to vriskw symfwna me armijo
        mk=0;
        gk=s*b^mk;
        while (vpa(subs(f,[x y],xk)-subs(f,[x y],xk-gk*p))<vpa(-a*b^mk*s*dk*p'))
            mk=mk+1;
            gk=s*b^mk;
        end
        xk=xk-gk*p;
        k=k+1;
    end
end
end