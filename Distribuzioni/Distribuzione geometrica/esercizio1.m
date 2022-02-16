function esercizio1
    main;
end

function main
    settings;
    p=0.01;
    fprintf("La probabilità che il quinto prodotto controllato sia il primo che è stato identificato come difettoso %s%%\n",num2str(geopdf(5,p)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end