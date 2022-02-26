function esercizio3
    main;
end

function main
    settings;
    n=15;
    nu=n-1;
    p=0.045;
    t_alphaMax=-1.761;
    alphaMeno=tcdf(t_alphaMax,nu)-p;
    k=tinv(alphaMeno,nu);
    fprintf("P(%s<X<%s)=%s\n",num2str(k),num2str(t_alphaMax),num2str(p));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end
