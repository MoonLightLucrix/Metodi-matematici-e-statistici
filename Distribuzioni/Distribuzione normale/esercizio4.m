function esercizio4
    main;
end

function main
    settings;
    mu=40;
    sigma=6;
    fprintf("a) x=%s\n",num2str(norminv(0.45,mu,sigma)));
    fprintf("b) x=%s\n",num2str(norminv(1-0.14,mu,sigma)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end

