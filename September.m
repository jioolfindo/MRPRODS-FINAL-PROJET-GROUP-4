x1 = optimvar('x1','LowerBound',0,'UpperBound',Inf);
x2 = optimvar('x2','LowerBound',0,'UpperBound',Inf);
x3 = optimvar('x3','LowerBound',0,'UpperBound',Inf);
x4 = optimvar('x4','LowerBound',0,'UpperBound',Inf);
x5 = optimvar('x5','LowerBound',0,'UpperBound',Inf);

prob = optimproblem('Objective',4220*x1 + 5632*x2 + 5035.4*x3 + 3030.08*x4 + 4300.88*x5, 'ObjectiveSense','max');

%Storage capacity (in terms of tire units)
prob.Constraints.c1 = x1 + x2 + x3 + x4 + x5  <= 1000;

%Budget contraint  (in terms of tire units)
prob.Constraints.c2 = x1 + x2 + x3 + x4 + x5 <= 800;


%Demand Constraint  (in terms of tire units)
prob.Constraints.c3 = x1 >= 240;
prob.Constraints.c4 = x2 >= 38;
prob.Constraints.c5 = x3 >= 92;
prob.Constraints.c6 = x4 >= 150;
prob.Constraints.c7 = x5 >= 130;







