function problema2
    main;
end

function main
    settings;
    t=readtable("potenzaEVelocita.txt","VariableNamingRule","preserve");
    x=table2array(t(:,1));
    y=table2array(t(:,2));
    n=length(x);
    xbar=mean(x);
    ybar=mean(y);
    p=polyfit(x,y,1);
    m=p(1);
    q=p(2);
    scatter(x,y);
    line(x,(m*x)+q,"Color","blue");
    sxx=0.0;
    syy=sxx;
    sxy=sxx;
    for i=1:n
        sxx=sxx+(x(i)-xbar)^2;
        syy=syy+(y(i)-ybar)^2;
        sxy=sxy+((x(i)-xbar)*(y(i)-ybar));
    end
    sxx=sxx/n;
    syy=syy/n;
    sxy=sxy/n;
    pxy=sxy/(sqrt(sxx*syy));
    fprintf("Coefficiente di Correlazione = %s\n\n",num2str(pxy));
    fprintf("Potenza(kW)\tVelocità(km/h)\n63\t\t%s\n",num2str((m*63)+q));
    syms x_1
    solve((m*x_1)+q==168,x_1);
    fprintf("%s\t\t168\n",num2str(131529/1849));
end

function settings
    clear;
    close all;
    commandwindow;
    clc;
end