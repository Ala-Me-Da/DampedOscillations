function y = simpleHarmonic(mass, springConstant, intialPos, intialVelocity) 

% Intialize and derive constants in simple harmonic motion  
angularFreq = sqrt(springConstant/mass); 
c1 = intialPos; 
c2 = intialVelocity/angularFreq;
amplitude = sqrt(c1^2 + c2^2) 
period = (2*pi)/angularFreq
frequency = 1/period

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

% Return symbolic equation modeling simple harmonic motion 
syms t 
y = amplitude*cos(angularFreq*t - phi); 

n = [-5:1:5]'; 
times = (pi/(2*angularFreq))*(2*(n + 1)) + phi/angularFreq 


