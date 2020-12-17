axis([-10 10 -10 10])
grid
line([0 0],[-10 10]);
line([-10 10],[0 0]);
hold on
tt=0;
while 1
    [xx,yy,BUTTON] = ginput(1);
    tt=tt+1
    if (BUTTON==3)
        break
    end
end
for ii=1:(tt-1)
    aa=abs(xx(ii)*yy(ii+1)-yy(ii)*xx(ii+1));
    tt=abs(xx(ii)*yy(ii+1)
    t=abs((xx(2)-xx(1))*(yy(3)-yy(1))-(yy(2)-yy(1))*(xx(3)-xx(1)));
a=abs(xx(1)*yy(2)-yy(1)*xx(2))+abs(xx(2)*yy(3)-yy(2)*xx(3))+abs(xx(1)*yy(3)-yy(1)*xx(3));
end
area=aa+xx(tt)*yy(1)-xx(1)*yy(tt);
