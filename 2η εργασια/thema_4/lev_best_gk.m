function [xk,k,shm] = lev_best_gk(f,x0)


e=0.01;
k=1;
xk=x0;
syms x y gk
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



end