function esercizio3
    main;
end

function main
    settings;
    mu=300;
    sigma=50;
    f=@(x)normpdf(x,mu,sigma);
    fprintf("P(X>32)=%s\n",num2str(integral(f,32,inf)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end