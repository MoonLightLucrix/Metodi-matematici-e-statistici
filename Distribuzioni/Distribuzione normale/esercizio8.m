function esercizio8
    main;
end

function main
    settings;
    mu=1.50;
    sigma=0.2;
    fprintf("1.50±%s\n",num2str(norminv(0.95)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end