classdef Automobile
    properties (Access=private)
        potenza=[];
        velocita=[];
        n;
    end
    methods (Access=private)
        function [sxx,syy,sxy]=derivParz(obj,x,y)
            xbar=mean(x);
            ybar=mean(y);
            sxx=0.0;
            syy=0.0;
            sxy=0.0;
            for i=1:1:obj.n
                sxx=sxx+((x(i)-xbar)^2);
                syy=syy+((y(i)-ybar)^2);
                sxy=sxy+((x(i)-xbar)*(y(i)-ybar));
            end
        end
    end
    methods (Access=public)
        function obj=Automobile(path,potenza,velocita)
            if(nargin==1)
                t=readtable(path,"VariableNamingRule","preserve");
                potenza=table2array(t(:,1));
                velocita=table2array(t(:,2));
            end
            obj.n=length(potenza);
            obj.potenza=potenza;
            obj.velocita=velocita;
        end
        function cc=coefficienteCorrelazione(obj)
            cc=corrcoef(obj.potenza,obj.velocita);
        end
        function rr2=rettaRegressione(obj)
            [sxx,syy,sxy]=obj.derivParz(obj.potenza,obj.velocita);
            rr2=(sxy^2)/(sxx*syy);
        end
        function toPlot(obj)
            xlabel("potenza(kW)");
            ylabel("velocita(km/h)");
            plot(obj.potenza,obj.velocita);
        end
        function str=toString(obj)
            str="Potenza    Velocita" + newline;
            for i=1:1:obj.n
                str=str + num2str(obj.potenza(i)) + "kW       " + num2str(obj.velocita(i)) + "km/h" + newline;
            end
        end
    end
end