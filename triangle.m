axis([-10 10 -10 10])
grid
line([0 0],[-10 10]);
line([-10 10],[0 0]);
hold on
[xx,yy,BUTTON] = ginput(3);
plot([xx(1) xx(2)], [yy(1) yy(2)], 'r');
plot([xx(2) xx(3)], [yy(2) yy(3)], 'r');
plot([xx(1) xx(3)], [yy(1) yy(3)], 'r');
t=abs((xx(2)-xx(1))*(yy(3)-yy(1))-(yy(2)-yy(1))*(xx(3)-xx(1)));
a=abs(xx(1)*yy(2)-yy(1)*xx(2))+abs(xx(2)*yy(3)-yy(2)*xx(3))+abs(xx(1)*yy(3)-yy(1)*xx(3));
if t==a
    disp("yes")
else
    disp("no")
end