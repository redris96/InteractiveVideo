function [x1,y1] = twirl(x, y,c,ang,rmax)
    coi = 211;
    coj = 374;
    rmax = 180; 
    dx = double(x - coi);
    dy = double(y - coj);
    r = sqrt(dx^2 + dy^2);
    angle = ang*pi/180;
    b = atan2(dy, dx) + angle;
    if r <= rmax 
        x1 = uint16(coi + r*cos(b));
        y1 = uint16(coj + r*sin(b));
    else
        x1 = x; y1 =y;
    end
end