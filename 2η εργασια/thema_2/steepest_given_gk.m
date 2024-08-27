function [xk,k,shm] = steepest_given_gk(f,x1,gk)
e=0.01;
k=1;
xk=x1;
syms x y
while true
    shm(k,:) = xk;
    p=vpa(subs(jacobian(f),[x y],xk));
    g=norm(p);

    if g<e
        break
    
    else 
        %dk=-p;
        %gk to pairnw etoimo gia to a 
        xk=xk-gk*p;
        k=k+1;
    end
end
end
