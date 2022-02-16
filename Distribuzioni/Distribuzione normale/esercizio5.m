function esercizio5
    main;
end

function main
    settings;
    mu=3.0;
    sigma=0.5;
    fprintf("La probabilità che una determinata batteria duri meno di 2.3 anni è %s%%\n",num2str(normcdf(2.3,mu,sigma)*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end

