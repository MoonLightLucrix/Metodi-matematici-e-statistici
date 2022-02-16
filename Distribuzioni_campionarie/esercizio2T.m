function esercizio2T
    main;
end

function main
    settings;
    t_0025=tinv(0.025,14);
    t_005=tinv(0.05,14);
    fprintf("t_0.025=%s\n",num2str(t_0025));
    fprintf("t_0.05=%s\n",num2str(t_005));
    fprintf("%s≤T≤%s\n",num2str(t_0025),num2str(t_005));
    f=@(x)tpdf(x,14);
    T=integral(f,t_0025,t_005);
    fprintf("T=%s\n",num2str(T));
end

function settings
    clear;
    close all;
    workspace;
    clc;
end