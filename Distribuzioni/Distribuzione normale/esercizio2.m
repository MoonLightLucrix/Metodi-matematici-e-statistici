function esercizio2
    main;
end

function main
    settings;
    mu=50;
    sigma=10;
    fprintf("P(45<X<62)=%s\n",num2str(normcdf(62,mu,sigma)-normcdf(45,mu,sigma)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end