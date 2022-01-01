classdef ViteInfo
    properties (Access=private)
        viti=[];
        n;
    end
    methods (Access=public)
        function obj=ViteInfo(path,viti)
            if(nargin==1)
                t=readtable(path,"VariableNamingRule","preserve");
                viti=table2array(t(:,1));
            end
            obj.n=length(viti);
            obj.viti=viti;
        end
        function m=media(obj)
            m=mean(obj.viti);
        end
        function m=mediana(obj)
            m=median(obj.viti);
        end
        function m=moda(obj)
            m=mode(obj.viti);
        end
        function s=deviazioneStandard(obj)
            m=obj.media;
            devianza=0;
            for i=1:1:obj.n
                devianza=devianza+((obj.viti(i)-m)^2);
            end
            s=sqrt((devianza)/(obj.n-1));
            %s=std(obj.viti);
        end
        function z=intervalloDiConfidenza(obj,livello)
            m=obj.media;
            erroreStandard=obj.deviazioneStandard/sqrt(obj.n);
            ts=tinv(livello,(obj.n-1));
            z=m+ts*erroreStandard;
        end
        function str=toString(obj)
            str="Campioni di viti" + newline;
            for i=1:1:length(obj.viti)
                str=str + num2str(obj.viti(i)) + "cm" + newline;
            end
        end
    end
end