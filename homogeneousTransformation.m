function T = homogeneousTransformation(a, d, degreesAlpha, degreesTheta)
% Implements the DH matrix
alpha = degreesAlpha/180*pi;
theta = degreesTheta/180*pi;
T = zeros(4,4);

T(1,1) = cos(theta);
T(1,2) = -sin(theta)*cos(alpha);
T(1,3) = sin(theta)*sin(alpha);
T(1,4) = a*cos(theta);

T(2,1) = sin(theta);
T(2,2) = cos(theta)*cos(alpha);
T(2,3) = -cos(theta)*sin(alpha);
T(2,4) = a*sin(theta);

T(3,1) = 0;
T(3,2) = sin(alpha);
T(3,3) = cos(alpha);
T(3,4) = d;

T(4,1) = 0;
T(4,2) = 0;
T(4,3) = 0;
T(4,4) = 1;
end