function esercizio7
    main;
end

function main
    settings;
    mu=3.0;
    sigma=0.005;
    f=@(x)normpdf(x,mu,sigma);
    fprintf("1-P(%s<X<%s)=%s%%\n",num2str(3.00-0.01),num2str(3.00+0.01),num2str((integral(f,-inf,3.00-1)+(integral(f,3.00+1,inf)))*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end