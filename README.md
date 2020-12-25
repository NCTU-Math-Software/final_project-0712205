# final_project-0712205
final_project-0712205 created by GitHub Classroom

## project5：任意給定平面上三點, 判斷原點是否在這三點所圍成的三角形內.

判斷原點是否在給定的三點所圍成的三角形內，畫出這三點所圍成的三角形的內切圓、外接圓並標出三角形的四心

### input

    三個點 A、B、C

### output

    三角形ABC的內切圓、外接圓，並標出三角形四心的位置
    
### 執行方法

先按run，在[-10 10]×[-10 10]的螢幕上逆時鐘給三個點

### 作法

在[-10 10]×[-10 10]的螢幕上逆時鐘給定三點：A、B、C

    [xx,yy,BUTTON] = ginput(3)
    
    A=[xx(1) yy(1)]、B=[xx(2) yy(2)]、C=[xx(3) yy(3)]

先用向量算出三角形ABC的面積，若OAB+OBC+OCA的面積相加等於ABC的面積，則原點O會在ABC內

    ABC面積=1/2*abs(det([xx(2)-xx(1) yy(2)-yy(1); xx(3)-xx(1) yy(3)-yy(1)]));
    
    OAB+OBC+OCA面積=1/2*(abs(det([xx(1) yy(1); xx(2) yy(2)]))+abs(det([xx(2) yy(2); xx(3) yy(3)]))+abs(det([xx(3) yy(3); xx(1) yy(1)]))

找出ABC的四心(內心、外心、重心、垂心)、並畫出內接圓和外接圓

    內心 int=[(bc.*xx(1)+ca.*xx(2)+ab.*xx(3))./(bc+ca+ab) (bc.*yy(1)+ca.*yy(2)+ab.*yy(3))./(bc+ca+ab)];
    
    內切圓半徑 oi=2*tt./(ab+bc+ca);
    
    外心 cir=[det([(xx(1)^2+yy(1)^2) yy(1) 1;(xx(2)^2+yy(2)^2) yy(2) 1;(xx(3)^2+yy(3)^2) yy(3) 1])./(4*tt) det([xx(1) (xx(1)^2+yy(1)^2) 1;xx(2) (xx(2)^2+yy(2)^2) 1;xx(3) (xx(3)^2+yy(3)^2) 1])./(4*tt)];
    
    外接圓半徑 oj=(ab*bc*ca)./(4*tt);
    
    重心 gra=[(xx(1)+xx(2)+xx(3))./3 (yy(1)+yy(2)+yy(3))./3]
    
    垂心 dow=[-det([(xx(2)*xx(3)+yy(2)*yy(3)) yy(1) 1;(xx(3)*xx(1)+yy(3)*yy(1)) yy(2) 1;(xx(1)*xx(2)+yy(1)*yy(2)) yy(3) 1])./(2*tt) -det([xx(1) (xx(2)*xx(3)+yy(2)*yy(3)) 1;xx(2) (xx(3)*xx(1)+yy(3)*yy(1)) 1;xx(3) (xx(1)*xx(2)+yy(1)*yy(2)) 1])./(2*tt)];
