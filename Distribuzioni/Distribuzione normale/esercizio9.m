function esercizio9
    main;
end

function main
    settings;
    mu=40;
    sigma=2;
    p=1-normcdf(43,mu,sigma);
    fprintf("La percentuale di resistori che avranno una resistenza che supera i 43Ω è %s%%\n",num2str(p*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end