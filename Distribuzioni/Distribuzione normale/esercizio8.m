function esercizio8
    main;
end

function main
    settings;
    mu=1.50;
    sigma=0.2;
    leftTail=norminv(0.025,mu,sigma);
    d=1.5-leftTail;
    fprintf("Il valore di d in modo tale che le specifiche %ccoprano%c il 95%% delle misure è %s\n",'"','"',num2str(d));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end