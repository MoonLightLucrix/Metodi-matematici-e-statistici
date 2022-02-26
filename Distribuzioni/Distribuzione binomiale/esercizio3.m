function esercizio3
    main;
end

function main
    settings;
    p=0.03;
    n=20;
    p_a=1-binopdf(0,n,p);
    fprintf("P_A=%s%%\n",num2str(p_a*100,3));
    n=10;
    p_b=binopdf(3,n,p_a);
    fprintf("P_B=%s%%\n",num2str(p_b*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end