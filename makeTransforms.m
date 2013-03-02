function [T1, T2, T3, T4, T5] = makeTransforms(degreesTheta1, degreesTheta2, degreesTheta3, degreesTheta4, degreesTheta5)

T1 = makeDHTransform(90,    0,      0,      degreesTheta1);
T2 = makeDHTransform(0,     3.15,   0,      degreesTheta2);
T3 = makeDHTransform(0,     3.19,   0,      degreesTheta3);
T4 = makeDHTransform(-90,   0,      0,      degreesTheta4);
T5 = makeDHTransform(0,     0,      7.75,   degreesTheta5);

end
