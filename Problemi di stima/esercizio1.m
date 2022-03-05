function esercizio1
    main;
end

function main
    settings;
    xbar=2.6;
    sigma=0.3;
    n=36;
    fprintf("Intervallo di con confidenza al 95%% per la media della concentrazione di zinco nel fiume è [%s;%s].\n",num2str(norminv(0.05,xbar,(sigma/sqrt(n)))),num2str(norminv(0.95,xbar,(sigma/sqrt(n)))));
    fprintf("Intervallo di con confidenza al 99%% per la media della concentrazione di zinco nel fiume è [%s;%s].\n",num2str(norminv(0.01,xbar,(sigma/sqrt(n)))),num2str(norminv(0.99,xbar,(sigma/sqrt(n)))));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end