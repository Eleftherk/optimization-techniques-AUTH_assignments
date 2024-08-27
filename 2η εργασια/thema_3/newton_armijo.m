function [xk,k,shm] = newton_armijo(f,x0,s)
e=0.01;
k=1;
xk=x0;
syms x y
% a anhkei[10^-5,10^-1]
% b anhkei[1/10,1/2]
a=5*10^-2;
b=0.3;
xkpal=1/0;
while true
    shm(k,:) = xk;
    p=vpa(subs(jacobian(f),[x y],xk));
    g=vpa(norm(p));
    if g<e
        break
    elseif (xkpal==xk)
        sprintf("idio shmeio")
        break
    else
        j=jacobian(jacobian(f));
        dk=-inv(vpa(subs(j,[x y],xk)))*p';
        
        
        %gk to vriskw symfwna me armijo
        mk=0;
        gk=s*b^mk;
        while (vpa(subs(f,[x y],xk)-subs(f,[x y],xk+gk*dk'))<vpa(-a*b^mk*s*dk'*p'))
           %vpa(subs(f,[x y],xk)-subs(f,[x y],xk+gk*dk'));
          % vpa(-a*b^mk*s*dk'*p');
            mk=mk+1;
            gk=s*b^mk;
        end
        
        
        xkpal=xk;
        xk=xk+gk*dk';
        k=k+1;
    end
    

end
xk=vpa(xk);



end