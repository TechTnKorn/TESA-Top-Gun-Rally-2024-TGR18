function [outputVal] = testFcn(inputSeq) %#codegen
arguments
    inputSeq (1,160) int32
end
coder.extrinsic('assert'); % Allow assert for C code generation
assert(isinteger(inputSeq), 'Input must be an integer.');
tmpSeq = double(inputSeq);
outputVal = sqrt(mean(tmpSeq.^2));
outputVal = outputVal / 8388608;
end