k1 = 37.817; % Measured - Translational K value
k2 = 0.03083365392; % Measured - Rotational K value
m = 1; % independent
R = 1; % indepenent
b = 100; % independent

J = 1;

options=odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,y]=ode45(@PullBackCar,[0 100],[0;5;0;0],options,k1,m,R,b,k2,J);

% output
q1=y(:,1);
%q8=y(:,2);
%v2=y(:,3)/m;
%w7=y(:,4)/J;
plot(t,q1,'r'); 
%plot(t,q8,'g');  
%plot(t,v2,'b');
%plot(t,w7,'r');