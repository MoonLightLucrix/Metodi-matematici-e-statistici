function esercizio2
    main;
end

function main
    settings;
    t=readtable("temperature.dat","VariableNamingRule","preserve");
    x=table2array(t(:,1));
    y=table2array(t(:,2));
    xbar=mean(x);
    ybar=mean(y);
    n=length(x);
    s_x=std(x,0);
    var_x=s_x^2;
    s_y=std(y,0);
    var_y=s_y^2;
    alpha=0.05;
    nuN=(((var_x)/(n))+((var_y)/(n))^2);
    nuD=(((((var_x)/(n))^2)/(n-1))+((((var_y)/(n))^2)/(n-1)));
    nu=fix(nuN/nuD);
    t_n=(xbar-ybar)/(sqrt(((var_x)/(n))+((var_y)/(n))));
    t_alpha=tinv(alpha,nu);
    myPlot(t_n,nu,t_alpha);
    if(test(t_n,nu,t_alpha))
        fprintf("Nell'anno in cui è stato effettuato il monitoraggio, la temperatura media della regione B è minore o uguale di quella della A.\n"); %H_0
    else
        fprintf("Nell'anno in cui è stato effettuato il monitoraggio, la temperatura media della regione B è maggiore di quella della A.\n"); %H_1
    end
end

function h=test(t_n,nu,t_alpha)
    f=@(x)tpdf(x,nu);
    p_value=integral(f,-inf,t_n);
    alpha=integral(f,-inf,t_alpha);
    h=(p_value>=alpha);
end

function myPlot(t_n,nu,t_alpha)
    x=-5:0.01:5;
    y=tpdf(x,nu);
    figure;
    plot(x,y,"Color","blue");
    hold on;
    x=-5:0.01:t_alpha;
    y=tpdf(x,nu);
    area(x,y,"FaceColor","blue");
    line([t_n,t_n],[0,tpdf(t_n,nu)],"Color","red");
    text(0,0.2,"1-α","Color","black","HorizontalAlignment","center");
    text(-2.2,0.02,"α","Color","white","HorizontalAlignment","center");
    text(t_n,-0.01,"T_n_-_1","Color","red","HorizontalAlignment","center");
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end