function esercizio2
    main;
end

function main
    settings;
    mu_a=5; %<-Numero a cazzo tanto mu_a-mu_b fa 0
    mu_b=mu_a;
    mu=mu_a-mu_b;
    xbar=1.0;
    sigma=1.0;
    var=sigma^2;
    n_a=18;
    n_b=n_a;
    z_meno=-((xbar-mu)/sqrt(((var)/(n_a))+((var)/(n_b))));
    z_piu=-z_meno;
    fprintf("P(-X_A+X_B>1.0)=%s%%\nP(X_A-X_B>1.0)=%s%%\n",num2str(1-normcdf(z_meno)*100,4),num2str(1-normcdf(z_piu)*100,4));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end