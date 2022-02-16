function esercizio3
    main;
end

function main
    settings;
    mu=300;
    sigma=50;
    f=@(x)normpdf(x,mu,sigma);
    p=integral(f,362,inf);
    fprintf("P(X>362)=%s\n",num2str(p));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end