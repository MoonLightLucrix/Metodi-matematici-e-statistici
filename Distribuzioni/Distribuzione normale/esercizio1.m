function esercizio1
    main;
end

function main
    settings;
    p=0.3015;
    f=@(x)normpdf(x);
    p_1=integral(f,-inf,inf);
    k=norminv(p_1-p);
    fprintf("a) k=%s\n",num2str(k));

    p=0.4167;
    z_2=-0.18;
    p_1=integral(f,-inf,z_2);
    k=norminv(p_1-p);
    fprintf("b) k=%s\n",num2str(k));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end

