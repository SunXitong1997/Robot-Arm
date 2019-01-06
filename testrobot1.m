clear;
clc;
close all;
%paraments of the robot arm
%         theta    d        l        alpha     offset
L(1)=Link([0       0.4      0.025    pi/2      0     ]); 
L(2)=Link([0       0        0.55     0         0     ]);
L(3)=Link([0       0        0.035    pi/2      0     ]);
L(4)=Link([0       0.5      0        pi/2      0     ]);
L(5)=Link([0       0        0        pi/2      0     ]);
L(6)=Link([0       0.1      0        0         0     ]);
robot=SerialLink(L,'name','robot arm'); %Link and name the robot arm
robot.plot([0,0,0,0,0,0]);%the robot model
robot.display();%show the paraments
teach(robot);%control the robot

