function esercizio6
    main;
end

function main
    settings;
    mu=800;
    sigma=40;
    fprintf("P(778<X<834)=%s%%\n",num2str((normcdf(834,mu,sigma)-normcdf(772,mu,sigma))*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end