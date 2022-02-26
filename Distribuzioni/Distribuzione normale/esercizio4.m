function esercizio4
    main;
end

function main
    settings;
    mu=40;
    sigma=6;
    z_alphaMin=norminv(0.45,mu,sigma);
    fprintf("P_A(%s<X)\n",num2str(z_alphaMin));
    z_alphaMax=norminv(1-0.14,mu,sigma);
    fprintf("P_B(X<%s)\n",num2str(z_alphaMax));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end