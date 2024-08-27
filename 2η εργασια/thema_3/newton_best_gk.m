function [xk,k,shm] = newton_best_gk(f,x0)
e=0.01;
k=1;
xk=x0;
syms x y gk
while true
    shm(k,:) = xk;
    p=vpa(subs(jacobian(f),[x y],xk));
    g=vpa(norm(p));
    if g<e
        break 
    else
        j=jacobian(jacobian(f));
        dk=-inv(vpa(subs(j,[x y],xk)))*p';

        syn=(subs(jacobian(f),[x y],xk+gk*dk'))*dk;
        gamk=vpa(solve(syn,gk));
        temp=1/0;
        tempgk=0;
        for i=1:size(gamk)
            if gamk(i)>0
                if subs(f,[x y],xk+gamk(i)*dk')<temp
                    tempgk=gamk(i);
                    temp = subs(f,[x y],xk+tempgk*dk');
                end
            end
        end
        gamk=tempgk;

        xk=xk+gamk*dk';
        k=k+1;
    end
    

end
xk=vpa(xk);

end