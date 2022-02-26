function esercizio5
    main;
end

function main
    settings;
    p=0.7;
    p_a=binopdf((10/2)-1,10,p);
    p_b=binopdf((20/2)-1,20,p);
    fprintf("P_A=%s%%\nP_B=%s%%\n",num2str(p_a*100,3),num2str(p_b*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end