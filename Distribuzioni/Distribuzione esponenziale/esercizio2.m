function esercizio2
    main;
end

function main
    settings;
    mu=4;
    f=@(x)exppdf(x,mu);
    p=1-integral(f,6,inf);
    disp(p);
    p=integral(f,0,1);
    disp(p);
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
