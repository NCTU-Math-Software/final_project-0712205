axis([-10 10 -10 10])
grid
line([0 0],[-10 10],'color','k');
line([-10 10],[0 0],'color','k');
hold on
axis equal
plot(0,0,'ro')
%給定3個點
[xx,yy,BUTTON] = ginput(3);
plot([xx(1) xx(2)], [yy(1) yy(2)], 'r');
plot([xx(2) xx(3)], [yy(2) yy(3)], 'r');
plot([xx(1) xx(3)], [yy(1) yy(3)], 'r');
%ABC面積
tt=1/2*abs(det([xx(2)-xx(1) yy(2)-yy(1); xx(3)-xx(1) yy(3)-yy(1)]));
%OA+OB+OC面積
aa=1/2*(abs(det([xx(1) yy(1); xx(2) yy(2)]))+abs(det([xx(2) yy(2); xx(3) yy(3)]))+abs(det([xx(3) yy(3); xx(1) yy(1)])));
%若ABC面積=OA+OB+OC面積，O在ABC內
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
 %內心座標
 int=[(bc.*xx(1)+ca.*xx(2)+ab.*xx(3))./(bc+ca+ab) (bc.*yy(1)+ca.*yy(2)+ab.*yy(3))./(bc+ca+ab)];
 %內心半徑
 oi=2*tt./(ab+bc+ca);
 %外心座標
 oo=[(xx(1)^2+yy(1)^2) yy(1) 1;(xx(2)^2+yy(2)^2) yy(2) 1;(xx(3)^2+yy(3)^2) yy(3) 1];
 ii=[xx(1) (xx(1)^2+yy(1)^2) 1;xx(2) (xx(2)^2+yy(2)^2) 1;xx(3) (xx(3)^2+yy(3)^2) 1];
 cir=[det(oo)./(4*tt) det(ii)./(4*tt)];
 oj=(ab*bc*ca)./(4*tt);
 %畫出內切圓
 alpha=0:pi/1000:2*pi;
 x=oi*cos(alpha)+int(1);
 y=oi*sin(alpha)+int(2);
 plot(int(1),int(2),'g+',x,y); 
 text(int(1),int(2),'內心','color','g', 'HorizontalAlignment', 'right'); 
 %畫出外接圓
 x1=oj*cos(alpha)+cir(1);
 y1=oj*sin(alpha)+cir(2);
 plot(cir(1),cir(2),'b+',x1,y1);
 text(cir(1),cir(2),'外心','color','b', 'HorizontalAlignment', 'right');
 %重心座標
 gra=[(xx(1)+xx(2)+xx(3))./3 (yy(1)+yy(2)+yy(3))./3];
 text(gra(1),gra(2),'重心','color','m', 'HorizontalAlignment', 'right');
 %垂心座標
 a1=xx(2)-xx(3);
 b1=yy(2)-yy(3);
 a2=xx(1)-xx(3);
 b2=yy(1)-yy(3);
 c1=a1.*yy(1)-b1.*xx(1);
 c2=a2.*yy(2)-b2.*xx(2);
 dow=[(a1.*c2-a2.*c1)./(a2.*b1-a1.*b2) (b1.*c2-b2.*c1)./(a2.*b1-a1.*b2)]
 text(dow(1),dow(2),'垂心','color','k', 'HorizontalAlignment', 'right');
 

