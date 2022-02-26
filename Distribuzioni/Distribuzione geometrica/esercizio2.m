function esercizio2
    main;
end

function main
    settings;
    p=0.05;
    fprintf("P=%s%%\n",num2str(geopdf(6,p)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end