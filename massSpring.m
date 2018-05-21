function y = massSpring(mass, drag, springConstant, intialPos, intialVelocity) 

quadEq = drag^2 - 4*mass*springConstant; 

if drag == 0 
    fprintf('The system is in Simmple Harmonic Motion\n'); 
    y = simpleHarmonic(mass, springConstant, intialPos, intialVelocity); 
end 

if quadEq < 0 && drag ~= 0 
    fprintf('The system is underdamped\n'); 
    y = underDamped(mass, drag, springConstant, intialPos, intialVelocity); 
end 

if quadEq > 0
    fprintf('The system is overdamped\n'); 
    y = overDamped(mass, drag, springConstant, intialPos, intialVelocity); 
end 

if quadEq == 0 
    fprintf('The system is critically damped\n'); 
    y = criticallyDamped(mass, drag, springConstant, intialPos, intialVelocity); 
end 



    
    