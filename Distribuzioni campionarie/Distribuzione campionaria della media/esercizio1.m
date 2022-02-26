function esercizio1
    main;
end

function main
    settings;
    mu=800;
    sigma=40;
    n=16;
    fprintf("P(X≤775)=%s%%\n",num2str(normcdf(775,mu,(sigma/sqrt(n)))*100,4));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end