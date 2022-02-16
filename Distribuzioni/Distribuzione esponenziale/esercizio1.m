function esercizio1
    main;
end

function main
    settings;
    mu=5;
    f=@(x)exppdf(x,mu);
    p=integral(f,0,8);
    disp(p);
    b=0.0;
    for i=2:5
        b=b+(binopdf(i,5,p));
    end
    disp(b);
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
