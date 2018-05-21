function y = criticallyDamped(mass, drag, springConstant, intialPos, intialVelocity) 
syms t 

r = -drag/(2*mass); 

c1 = intialPos; 
c2 = intialVelocity - r*intialPos; 

y = c1*exp(r*t) + c2*t*exp(r*t); 