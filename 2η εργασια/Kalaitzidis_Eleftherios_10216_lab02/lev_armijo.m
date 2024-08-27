function [xk,k,shm] = lev_armijo(f,x0,s)

e=0.01;
k=1;
xk=x0;
syms x y
a=5*10^-2;
b=0.3;
while true
    shm(k,:) = xk;
    if norm(subs(jacobian(f),[x y],xk))<e
        break
    else
       mk=vpa(max(abs(eig(subs((jacobian(jacobian(f))),[x y],xk))))+0.2);
        g=vpa(subs(jacobian(f),[x y],xk));
        h=vpa(subs(jacobian(jacobian(f)),[x y],xk));
        dk=-inv(h+mk*eye(2))*(g)';
        %dk=-g/norm(h+mk*eye(size(h)));
        


        mk=0;
        gk=s*b^mk;
        p=vpa(subs(jacobian(f),[x y],xk));
        %vpa(subs(f,[x y],xk)-subs(f,[x y],xk+gk*dk'))
       % vpa(-a*b^mk*s*dk'*p')
        while (vpa(subs(f,[x y],xk)-subs(f,[x y],xk+gk*dk'))<vpa(-a*b^mk*s*dk'*p'))
           %vpa(subs(f,[x y],xk)-subs(f,[x y],xk+gk*dk'))
           %vpa(-a*b^mk*s*dk'*p')
            mk=mk+1;
            gk=s*b^mk;
        end
                
        
        xk=xk+gk*dk';
        k=k+1;
    end
end



end