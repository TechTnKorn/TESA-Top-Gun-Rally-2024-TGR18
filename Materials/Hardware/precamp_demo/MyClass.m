classdef MyClass
    %MYCLASS Summary of this class goes here
    %   Detailed explanation goes here

    properties
        Type
    end

    methods
        function obj = MyClass(inputArg)
            %MYCLASS Construct an instance of this class
            %   Detailed explanation goes here
            obj.Type = inputArg;
        end

        function outputArg = method(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            switch obj.Type
                case 1
                    outputArg = norm(inputArg, 1);
                case 2
                    outputArg = norm(inputArg, 2);
                case 3
                    outputArg = norm(inputArg, Inf);
                otherwise
                    outputArg = norm(inputArg, 2);
            end
        end
    end
end