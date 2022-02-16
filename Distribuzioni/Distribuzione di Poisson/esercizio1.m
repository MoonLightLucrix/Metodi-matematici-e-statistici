function esercizio1
    main;
end

function main
    settings;
    lambda=4;
    fprintf("La probabilità che 6 particelle vengano identificate da un contatore in un qualsiasi millisecondo è %s%%\n",num2str(poisspdf(6,lambda)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
