function esercizio1
    main;
end

function main
    settings;
    alpha=0.01;
    beta=2;
    f=@(x)wblpdf(x,alpha,beta);
    p=integral(f,0,8);
    disp(p);
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end

