# final_project-0712205
final_project-0712205 created by GitHub Classroom

## project5：任意給定平面上三點, 判斷原點是否在這三點所圍成的三角形內.

### 判斷原點是否在給定的三點所圍成的三角形內，畫出這三點所圍成的三角形的內切圓、外接圓並標出三角形的四心

在[-10 10]×[-10 10]的螢幕上逆時鐘給定三點：A、B、C

    [xx,yy,BUTTON] = ginput(3)

先算出三角形ABC的面積（||AB×AC||），若OAB+OBC+OCA的面積相加等於ABC的面積，則原點O會在ABC內

    ABC面積=1/2*abs(det([xx(2)-xx(1) yy(2)-yy(1); xx(3)-xx(1) yy(3)-yy(1)]));
    
    OAB+OBC+OCA面積=1/2*(abs(det([xx(1) yy(1); xx(2) yy(2)]))+abs(det([xx(2) yy(2); xx(3) yy(3)]))+abs(det([xx(3) yy(3); xx(1) yy(1)]))

找出ABC的四心(內心、外心、重心、垂心)、並畫出內接圓和外接圓
