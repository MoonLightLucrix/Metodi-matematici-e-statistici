function esercizio1
    main;
end

function main
    settings;
    n=10;
    p=1/4;
    x=7;
    p_b=1-binocdf(x,n,p);
    fprintf("La probabilità di superare il test è %s o in percentuale %s%%\n",num2str(p_b),num2str(p_b*100));
end

function settings
    clear;
    close all;
    clc;
end