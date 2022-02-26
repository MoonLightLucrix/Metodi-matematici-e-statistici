function esercizio1
    main;
end

function main
    settings;
    alpha=0.01;
    beta=2;
    fprintf("P(X≤8)=%s%%\n",num2str(wblcdf(8,alpha,beta)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end