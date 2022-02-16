function esercizio6
    main;
end

function main
    settings;
    mu=800;
    sigma=40;
    f=@(x)normpdf(x,sigma,mu);
    p=integral(f,778,834);
    fprintf("La probabilità che una lampadina duri dalle 778 alle 834 ore è %s%%\n",num2str(p*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end