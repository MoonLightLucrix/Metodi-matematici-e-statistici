function esercizio1
    main;
end

function main
    settings;
    mu=5;
    p=1-expcdf(8,mu);
    fprintf("P=%s%%\n",num2str(binopdf(2,5,p)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end