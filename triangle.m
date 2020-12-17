axis([-10 10 -10 10])
grid
line([0 0],[-10 10]);
line([-10 10],[0 0]);
hold on
[xx,yy,BUTTON] = ginput(3);
plot([xx(1) xx(2)], [yy(1) yy(2)], 'r');
plot([xx(2) xx(3)], [yy(2) yy(3)], 'r');
plot([xx(1) xx(3)], [yy(1) yy(3)], 'r');
tt=abs((xx(2)-xx(1))*(yy(3)-yy(1))-(yy(2)-yy(1))*(xx(3)-xx(1)));
aa=abs(xx(1)*yy(2)-yy(1)*xx(2))+abs(xx(2)*yy(3)-yy(2)*xx(3))+abs(xx(1)*yy(3)-yy(1)*xx(3));
if t==a
    disp("yes")
else
    disp("no")
end
x1=[(xx(1)-xx(2)) yy(1)-yy(2)];
x2=[(xx(3)-xx(2)) yy(3)-yy(2)];
x3=[(xx(1)-xx(3)) yy(1)-yy(3)];
ab=norm(x1);
bc=norm(x2);
ca=norm(x3);
int=[(bc*xx(1)+ca*xx(2)+ab*xx(3))./(bc+ca+ab) (bc*yy(1)+ca*yy(2)+ab*yy(3))./(bc+ca+ab)]
oi=2*aa./(ab+bc+ca);
alpha=0:pi/10000:2*pi;
x=oi*cos(alpha)+(bc*xx(1)+ca*xx(2)+ab*xx(3))./(bc+ca+ab);
y=oi*sin(alpha)+(bc*yy(1)+ca*yy(2)+ab*yy(3))./(bc+ca+ab);
plot((bc*xx(1)+ca*xx(2)+ab*xx(3))./(bc+ca+ab),(bc*yy(1)+ca*yy(2)+ab*yy(3))./(bc+ca+ab),'r+',x,y);
axis equal;

