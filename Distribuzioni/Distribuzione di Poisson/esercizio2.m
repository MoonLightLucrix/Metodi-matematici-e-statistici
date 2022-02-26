function esercizio2
    main;
end

function main
    settings;
    lambda=10;
    fprintf("P=%s%%\n",num2str(poisspdf(15,lambda)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end