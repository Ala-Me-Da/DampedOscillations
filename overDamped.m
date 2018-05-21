function y = overDamped(mass, drag, springConstant, intialPos, intialVelocity) 

syms t 

r1 = (-drag + sqrt(drag^2 - 4*mass*springConstant)/(2*mass)); 
r2 = (-drag - sqrt(drag^2 - 4*mass*springConstant)/(2*mass)) 

c1 = (intialVelocity - r2*intialPos)/(r1 - r2); 
c2 = intialPos - c1; 

y = c1*exp(r1*t) + c2*exp(r2*t); 

