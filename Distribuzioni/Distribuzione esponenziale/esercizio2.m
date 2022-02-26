function esercizio2
    main;
end

function main
    settings;
    mu=4;
    p=1-expcdf(6,mu);
    fprintf("P(Y>6)=%s%%\nP(X<1)=%s%%\n",num2str(p*100,4),num2str(expcdf(1,mu)*100,4));

end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end