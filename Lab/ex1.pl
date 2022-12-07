https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder


%% First order logic

%% owns(SumSum, Galactica-S3)
%% smart_phone_technology(Galactica-S3)
%% competitor(Appy, SumSum)
%% steal(Appy, Galactica-S3)
%% boss(Stevey, Appy)
%% ∀x ∀y competitor(x, y) → rival(x, y)
%% ∀x (smart_phone_technology(x)) → business(x) 
%% ∀b ∀x ∀y ∀z boss(x, b) Λ business(y) Λ steal(x, y) Λ owns(z, y) Λ rival(b, z) → unethical(x)


owns(sumSum, galacticaS3).
smart_phone_technology(galacticaS3).
competitor(appy, sumSum).
steal(stevey, galacticaS3).
boss(stevey, appy).
rival(X, Y):- competitor(X, Y).
business(X):- smart_phone_technology(X).
unethical(X):-
	boss(X, B),
	business(Y),
	steal(X, Y),
	owns(Z, Y),
	rival(B, Z).


%% [trace]  ?- unethical(stevey).
%%    Call: (8) unethical(stevey) ? creep
%%    Call: (9) boss(stevey, _8390) ? creep
%%    Exit: (9) boss(stevey, appy) ? creep
%%    Call: (9) business(_8388) ? creep
%%    Call: (10) smart_phone_technology(_8388) ? creep
%%    Exit: (10) smart_phone_technology(galacticaS3) ? creep
%%    Exit: (9) business(galacticaS3) ? creep
%%    Call: (9) steal(stevey, galacticaS3) ? creep
%%    Exit: (9) steal(stevey, galacticaS3) ? creep
%%    Call: (9) owns(_8388, galacticaS3) ? creep
%%    Exit: (9) owns(sumSum, galacticaS3) ? creep
%%    Call: (9) rival(appy, sumSum) ? creep
%%    Call: (10) competitor(appy, sumSum) ? creep
%%    Exit: (10) competitor(appy, sumSum) ? creep
%%    Exit: (9) rival(appy, sumSum) ? creep
%%    Exit: (8) unethical(stevey) ? creep
%% true.

