function esercizio4T
    main;
end

function main
    settings;
    mu=500;
    n=25;
    nu=n-1;
    t_1=-tinv(0.05,nu);
    fprintf("t_1=%s\n",num2str(t_1,4));
    t_2=tinv(0.05,nu);
    fprintf("t_2=%s\n",num2str(t_2,4));
    xbar=518;
    sigma=40;
    if(t_test(t_1,t_2,((xbar-mu)/(sigma/sqrt(n))),(sigma^2),n))
        fprintf("H_0 non si rifiuta\n");
    else
        fprintf("H_0 si rifiuta\n");
    end
end

function h=t_test(t_1,t_2,z,v,n)
    disp(z);
    t=(z)/sqrt(v/n-1);
    disp(t);
    if(abs(t_1-t_2)>t)
        h=true;
        return;
    end
    h=false;
end

function settings
    clear
    close all;
    commandwindow;
    clc;
end