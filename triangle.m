axis([-10 10 -10 10])
grid
line([0 0],[-10 10]);
line([-10 10],[0 0]);
hold on
axis equal
plot(0,0,'ro')
%���w3���I
[xx,yy,BUTTON] = ginput(3);
plot([xx(1) xx(2)], [yy(1) yy(2)], 'r');
plot([xx(2) xx(3)], [yy(2) yy(3)], 'r');
plot([xx(1) xx(3)], [yy(1) yy(3)], 'r');
%ABC���n
tt=1/2*abs(det([xx(2)-xx(1) yy(2)-yy(1); xx(3)-xx(1) yy(3)-yy(1)]));
%OA+OB+OC���n
aa=1/2*(abs(det([xx(1) yy(1); xx(2) yy(2)]))+abs(det([xx(2) yy(2); xx(3) yy(3)]))+abs(det([xx(3) yy(3); xx(1) yy(1)])));
%�YABC���n=OA+OB+OC���n�AO�bABC��
if tt<=(aa+10^(-5)) && tt>=(aa-10^(-5))
    disp("The original point is in the triangle.")
else
    disp("The original point is not in the triangle.")
end
 A=[xx(1) yy(1)];
 B=[xx(2) yy(2)];
 C=[xx(3) yy(3)];
 ab=norm(B-A);
    bc=norm(B-C);
    ca=norm(C-A);
    %���߮y��
    int=[(bc.*xx(1)+ca.*xx(2)+ab.*xx(3))./(bc+ca+ab) (bc.*yy(1)+ca.*yy(2)+ab.*yy(3))./(bc+ca+ab)]
    %���ߥb�|
    oi=2*aa./(ab+bc+ca);
    %�~�߮y��
    oo=[(xx(1)^2+(yy(1))^2) yy(1) 1;(xx(2)^2+(yy(2))^2) yy(2) 1;(xx(3)^2+(yy(3))^2) yy(3) 1];
    ii=[xx(1) (xx(1)^2+(yy(1))^2) 1;xx(2) (xx(2)^2+(yy(2))^2) 1;xx(3) (xx(3)^2+(yy(3))^2) 1];
    cir=[det(oo)./(4*aa) det(ii)./(4*aa)]
    oj=(ab*bc*ca)./(4*aa);
    %�e�X������
    alpha=0:pi/1000:2*pi;
    x=oi*cos(alpha)+(bc.*xx(1)+ca.*xx(2)+ab.*xx(3))./(bc+ca+ab);
    y=oi*sin(alpha)+(bc.*yy(1)+ca.*yy(2)+ab.*yy(3))./(bc+ca+ab);
    plot((bc*xx(1)+ca*xx(2)+ab*xx(3))./(bc+ca+ab),(bc*yy(1)+ca*yy(2)+ab*yy(3))./(bc+ca+ab),'r+',x,y);
    %�e�X�~����
    x1=oj*cos(alpha)+cir(1);
    y1=oj*sin(alpha)+cir(2);
    plot(cir(1),cir(2),'r+',x1,y1);

