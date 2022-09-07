function data = projectile(t,h,v,a)
    x = v*cos(deg2rad(a)).*t;
    y = h + v*sin(deg2rad(a)).*t-0.5*9.86.*(t.*t);
    data = table(t',x',y','VariableNames', {'t','x','y'});
end