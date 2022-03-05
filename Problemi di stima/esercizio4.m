function esercizio4
    main;
end

function main
    settings;
    n_a=50;
    n_b=75;
    xbar_a=36;
    xbar_b=42;
    sigma_a=6;
    var_a=sigma_a^2;
    sigma_b=8;
    var_b=sigma_b^2;
    alpha=1-0.96;
    z_alphaMin=norminv(alpha,xbar_a-xbar_b,sqrt(((var_a)/(n_a))+((var_b)/(n_b))));
    z_alphaMax=norminv(1-alpha,xbar_a-xbar_b,sqrt(((var_a)/(n_a))+((var_b)/(n_b))));
    fprintf("Un intervallo di confidenza al 96%% per μ_a−μ_b è [%s;%s].\n",num2str(z_alphaMin),num2str(z_alphaMax));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end