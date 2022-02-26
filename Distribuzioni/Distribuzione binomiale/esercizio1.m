function esercizio1
    main;
end

function main
    settings;
    p=3/4;
    res=binopdf(2,4,p);
    fprintf("P=%s%%\n",num2str(res*100,3));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end