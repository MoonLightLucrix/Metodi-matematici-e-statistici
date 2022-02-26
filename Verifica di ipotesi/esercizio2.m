function esercizio2
    main;
end

function main
    settings;
    n=50;
    xbar=7.8;
    sigma=0.5;
    mu=8;
    alpha=0.01;
    z=(xbar-mu)/(sigma/sqrt(n));
    z_alphaMin=norminv(alpha/2);
    z_alphaMax=norminv(1-(alpha/2));
    myPlot(z,z_alphaMin,z_alphaMax);
    if(test(z,z_alphaMin,z_alphaMax))
        fprintf("μ = 8\n"); %H_0
    else
        fprintf("μ ≠ 8\n"); %H_1
    end
end

function h=test(z,z_alphaMin,z_alphaMax)
    f=@(x)normpdf(x);
    p_value=2*(1-normcdf(abs(z)));
    alpha=integral(f,-inf,z_alphaMin)+integral(f,z_alphaMax,inf);
    h=(p_value>=alpha);
end

function myPlot(z,z_alphaMin,z_alphaMax)
    normspec([z_alphaMin,z_alphaMax],0,1,"outside");
    line([z,z],[0,normpdf(z)],"Color","red");
    text(z,-0.01,"Z","Color","red","HorizontalAlignment","center");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(-3.2,0.02,"-α/2","Color","black","HorizontalAlignment","center");
    text(3.2,0.02,"α/2","Color","black","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end