function Ry  = Roty(theta)
%calculate rotation matrix when rotating around y-axis
Ry=[cos(theta) 0 sin(theta) ; 0 1 0 ; -sin(theta) 0 cos(theta)];