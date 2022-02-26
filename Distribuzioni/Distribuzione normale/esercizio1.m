function esercizio1
    main;
end

function main
    settings;
    p=0.3015;
    k_area=1-p;
    fprintf("k_A=%s\n",num2str(norminv(k_area)));
    p=0.4167;
    z_max=-0.18;
    p_min=normcdf(z_max);
    k_area=p_min-p;
    fprintf("k_B=%s\n",num2str(norminv(k_area)));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end