function esercizio3
    main;
end

function main
    settings;
    x=[9.8,10.2,10.4,9.8,10.0,10.2,9.6];
    n=length(x);
    nu=n-1;
    fprintf("Un intervallo di confidenza al 95%% per il contenuto medio di questo tipo di contenitori è [%s;%s].\n",num2str(tinv(0.05,nu)),num2str(tinv(0.95,nu)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end