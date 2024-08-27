function [xk,k,shm] = newton_given_gk(f,x0,gk)
e=0.01;
k=1;
xk=x0;
syms x y
while true
    shm(k,:) = xk;
    p=vpa(subs(jacobian(f),[x y],xk));
    g=vpa(norm(p));
    if g<e
        break 
    else
        j=jacobian(jacobian(f));
        dk=-inv(vpa(subs(j,[x y],xk)))*p';
        xk=xk+gk*dk';
        k=k+1;
    end
    

end
xk=vpa(xk);

end