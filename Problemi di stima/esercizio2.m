function esercizio2
    main;
end

function main
    settings;
    n=25;
    var=4;
    xbar=6.2;
    fprintf("Limite superiore al 95%% per la media dei tempi di reazione è %s.\n",num2str(norminv(0.95,xbar,sqrt(var/n))));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end