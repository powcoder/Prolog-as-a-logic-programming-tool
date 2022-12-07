https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
% fact
company(appy).
company(sumsum).
person(stevey).
business(smart_phone,sumsum).
% rule
boss(P,C) :- person(P), company(C).
steal(P,B,C) :- person(P), business(B,C1), company(C),C \= C1.
rival(C1,C2) :- company(C1), company(C2), C1 \= C2.
unethical(P,B,C) :- boss(P,C1), business(B,C), rival(C1,C).

% ?- unethical(stevey,Bussiness,RivalCompany).
% T Call: (9) company(_G298)
% T Exit: (9) company(appy)
% T Call: (9) company(appy)
% T Exit: (9) company(appy)
% T Call: (9) company(sumsum)
% T Exit: (9) company(sumsum)
%Bussiness = smart_phone,
%RivalCompany = sumsum 