function Rx  = Rotx(theta)
%calculate rotation matrix when rotating around x-axis
Rx=[1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];