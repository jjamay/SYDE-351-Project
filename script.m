% Real life parameters
k1 = 37.817; % Translational K value
k2 = 0.03083365392; % Rotational K value
m_car = 0.1265; % Mass of the car in kg
m_wheel = 0.018; % Mass of wheel in kg
outer_radius = 0.02; % Outer wheel radius in m (with tire)
inner_radius = 0.01; % Inner wheel radius in m

% Moment of Inertia for the wheel - 0.5MR^2
% ASSUMPTION: Wheel is modelled as hollow cylinder 
J = 0.5*m_wheel*(outer_radius^2 + inner_radius^2);  

% Unknown still 
b = 100; % parameter for friction - what do we do with this?

options=odeset('RelTol',1e-4,'AbsTol',1e-8);
[t,y]=ode45(@PullBackCar,[0 10],[0;5;0;0],options,k1,m_car,outer_radius,b,k2,J);

% output
q1=y(:,1);
%q8=y(:,2);
%v2=y(:,3)/m;
%w7=y(:,4)/J;
plot(t,q1,'r'); 
%plot(t,q8,'g');  
%plot(t,v2,'b');
%plot(t,w7,'r');