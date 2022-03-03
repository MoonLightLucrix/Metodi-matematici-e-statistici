function problema1
    main;
end

function main
    settings;
    x=[0.726,0.735,0.755,0.801,0.699,0.701,0.785,0.766,0.763,0.781];
    n=length(x);
    nu=n-1;
    fprintf("Media=%s\nModa=%s\nMediana=%s\nDeviazione standard=%s\nIntervallo di confidenza per la media di livello 95%%=±%s\nIntervallo di confidenza per la media di livello 90%%=±%s\n",num2str(mean(x)),num2str(mode(x)),num2str(median(x)),num2str(std(x,0)),num2str(tinv(0.95,nu)),num2str(tinv(0.90,nu)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end