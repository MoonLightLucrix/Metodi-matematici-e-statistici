function esercizio9
    main;
end

function main
    settings;
    mu=40;
    sigma=2;
    fprintf("P(X>43)=%s%%\n",num2str((1-normcdf(43,mu,sigma))*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end