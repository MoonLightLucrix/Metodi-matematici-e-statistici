function esercizio2
    main;
end

function main
    settings;
    p=0.05;
    fprintf("La probabilità che siano necessari 5 tentativi prima di trovare una linea libera è %s%%\n",num2str(geopdf(5,p)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end