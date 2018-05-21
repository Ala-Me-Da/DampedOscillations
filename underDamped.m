function y = underDamped(mass, drag, springConstant, intialPos, intialVelocity) 

syms t 

% intialize constants necessary for underdamped oscillation motion 
a = -drag/(2*mass); 
b = (sqrt(4*mass*springConstant - drag^2))/(2*mass); 
c1 = intialPos; 
c2 = (intialVelocity - intialPos*a)/(b); 
amplitude = sqrt(c1^2 + c2^2); 

% compute quasiperiod and quasifrequency 
quasiPeriod = (2*pi)/(b)
quasiFrequency = 1 / quasiPeriod


% Determine phase angle phi based on constants c1, c2 

if c1 > 0 && c2 > 0 
    phi = atan(c2/c1); 
end 

if c1 < 0 && c2 > 0 
    phi = pi + atan(c2/c1); 
end 

if c1 < 0 && c2 < 0 
    phi = pi + atan(c2/c1); 
end 

if c1 == 0 && c2 ~= 0 
    phi = pi/2; 
end 

if c1 ~= 0 && c2 == 0 
    phi = 0; 
end 

y = amplitude*exp(a*t)*(cos(b*t - phi)) 