function esercizio3T
    main;
end

function main
    settings;
    t=-1.761;
    n=15;
    nu=n-1;
    p=0.045;
    f=@(x)tpdf(x,nu);
    p_1=integral(f,-inf,t);
    k=tinv(p_1-p,nu);
    fprintf("k=%s\n",num2str(k));
end

function settings
    clear
    close all;
    commandwindow;
    clc;
end