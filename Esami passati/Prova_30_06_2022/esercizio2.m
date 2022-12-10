function esercizio2
    main;
end

function main
    settings;
    x=[105,511,401,622,330];
    y=[44,214,193,299,143];
    n_x=length(x);  %dove appunto n_x=n_y
    n=n_x;
    scatter(x,y);
    xbar=mean(x);
    ybar=mean(y);
    sxx=0.0;
    syy=0.0;
    sxy=0.0;
    for i=1:n
        sxx=sxx+((x(i)-xbar)^2);
        syy=syy+((y(i)-ybar)^2);
        sxy=sxy+((x(i)-xbar)*(y(i)-ybar));
    end
    sxx=sxx/n; %varianza x
    syy=syy/n; %varianza y
    sxy=sxy/n; %covarianza x y
    pxy=(sxy)/sqrt(sxx*syy); %Coefficiente di correlazione lineare o di Pearson
    p=polyfit(x,y,1);
    beta_1=p(1);
    beta_0=p(2);
    line(x,(beta_1*x)+beta_0,"Color","blue");
    f=@(x_0)(beta_1*x_0)+beta_0;
    fprintf("1. Coefficiente di correlazione lineare o di Pearson = %s\n",num2str(pxy));
    fprintf("2. beta_1*x+beta_0 = %s*x%s\n",num2str(beta_1),num2str(beta_0));
    fprintf("3.\nx\ty\n200\t%s\n300\t%s\n400\t%s\n",num2str(f(200)),num2str(f(300)),num2str(f(400)));
end

function settings
    clear;
    close all;
    clc;
end
