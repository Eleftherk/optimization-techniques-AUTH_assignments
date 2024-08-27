function [xk,k,shm] = lev_given_gk(f,x0,gk)
e=0.01;
k=1;
xk=x0;
syms x y
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
        xk=xk+gk*dk';
        k=k+1;
    end
end

end