% projection trajectory

%[v0, theta] = deal(230, 39);
%[h, d] = projectile(v0, theta);
%fprintf('Max Height: %.2f m, Max Distance: %.2f m\n', h, d);

function [maxheight,distance]=projectileTrajectory(v,angle)
g=9.81;
anglerad=deg2rad(angle);
maxheight=(v^2*(sin(anglerad))^2)/(2*g);
distance=(v^2*sin(2*anglerad))/g;
t=linspace(0,2*v*sin(anglerad)/g,100);
x=v*cos(anglerad)*t;
y=v*sin(anglerad)*t-0.5*g*t.^2;
plot(x,y);
end
v = 230;
angle = 39;
[maxheight, distance] = projectileTrajectory(v, angle);
disp(maxheight);
disp(distance);
