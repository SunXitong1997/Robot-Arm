function [invx, invy, invz] = invRot(x, y, z, l0, l1, l2, l3, f)
if f == 1
    invx = y;
    invy = x;
    invz = z;
    fprintf('d1 = %f \n',invx);
    fprintf('d2 = %f \n',invy);
    fprintf('d3 = %f \n',invz);
end
if f == 2
    invx = atan(y/x)*360/6.2832;
    invy = z-l0-l1;
    invz = sqrt(x^2+y^2);
    fprintf('theta1 = %f \n',invx);
    fprintf('d2 = %f \n',invy);
    fprintf('d3 = %f \n',invz);
end
if f == 3
    invx = atan((-x)/y)*360/6.2832;
    invy = atan((z-l0-l1)/sqrt(x^2+y^2))*360/6.2832;
    invz = sqrt(x^2+y^2+(z-l0-l1)^2);
    fprintf('theta1 = %f \n',invx);
    fprintf('theta2 = %f \n',invy);
    fprintf('d3 = %f \n',invz);
end
if f == 4
    invx = atan((-x)/y)*360/6.2832;
    invz = asin((x^2+y^2+(z-l0-l1)^2-l2^2-l3^2)/2*l2*l3);
    syms theta2;
    [theta2,fval]=fsolve(@(theta2)l2*sin(theta2)-l3*cos(theta2+invz)-(z-l0-l1),0);
    invy = theta2*360/6.2832;
    invz=invz*360/6.2832;
    fprintf('theta1 = %f \n',invx);
    fprintf('theta2 = %f \n',invy);
    fprintf('theta3 = %f \n',invz);    
end