function esercizio2
    main;
end

function main
    settings;
    mu=50;
    sigma=10;
    f=@(x)normpdf(x,mu,sigma);
    p=integral(f,45,62);
    fprintf("P(45<X<62)=%s\n",num2str(p));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end