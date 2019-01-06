function [Pe]  = Rot(P0, l0, theta1, l1, f1, theta2, l2, f2, theta3, l3, f3)
% calculate xe, ye, ze by the three theta, three l and their rotation axis
% x-axis => f=1; y-axis => f=2; z-axis => f=3; 
P1 = P0 + l0;

if f1 == 1
    A1 = Rotx(theta1);
end
if f1 == 2
    A1 = Roty(theta1);
end
if f1 == 3
    A1 = Rotz(theta1);
end
P2 = P1 + A1*l1;

if f2 == 1
    A2 = Rotx(theta2);
end
if f2 == 2
    A2 = Roty(theta2);
end
if f2 == 3
    A2 = Rotz(theta2);
end
P3 = P2 + A1*A2*l2;

if f3 == 1
    A3 = Rotx(theta3);
end
if f3 == 2
    A3 = Roty(theta3);
end
if f3 == 3
    A3 = Rotz(theta3);
end
Pe = P3 + A1*A2*A3*l3;
C = A1*A2*A3;
theta = atan2(sqrt(C(1,3)^2+C(2,3)^2),C(3,3));
posy = atan2(C(3,2), -C(3,1));
phi = atan2(C(2,3), C(1,3));
Euler = [theta; posy; phi];
Pe=[Pe;Euler];
