function esercizio1
    main;
end

function main
    settings;
    lambda=4;
    fprintf("P=%s%%\n",num2str(poisspdf(6,lambda)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end