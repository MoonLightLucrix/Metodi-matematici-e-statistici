function esercizio1
    main
end

function main
    settings;
    mu_0=800;
    sigma=40;
    z=(775-mu_0)/(sigma/sqrt(16));
    %f=@(x)normpdf(x,800,40*40);
    %risultato=integral(f,-inf,775)*0.16;
    z_alpha=norminv(0.05,0,sigma);
    fprintf("z=%s\nz_alpha=%s\n",num2str(z),num2str(z_alpha));
    fprintf("L'ipotesi H_0 non si rifiuta\n");

    %norminv -> area 
    %normcdf -> -∞<x<z_alpha o funzione di ripartizione
    %normpdf -> valore nel punto o funzione densità di probabilità
end

function settings
    clear;
    %close all;
    %workspace;
    clc;
end