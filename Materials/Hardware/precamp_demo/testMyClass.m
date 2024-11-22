function [outputArg] = testMyClass(normType, normData) %#codegen
arguments
    normType (1,1) double
    normData (1,4) double
end
obj = MyClass(normType);
outputArg = obj.method(normData);
end