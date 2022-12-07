https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
offspring(prince_charles,male,1).
offspring(princess_ann,female,2).
offspring(prince_andrew,male,3).
offspring(prince_edward,male,4).

old_royal_succession(Line):-
                     append(Males,Females,Line),
                     old_royal_succession_male_female(Males,male),
                     old_royal_succession_male_female(Females,female),!.

old_royal_succession_male_female(Line,Sex):-
                     findall((Name,Level),offspring(Name,Sex,Level),Alls),
                     sort(2,@=<,Alls,Sorted),
                     maplist(fst,Sorted,Line).

% ?- old_royal_succession(Line).
% Line = [prince_charles, prince_andrew, prince_edward, princess_ann] .                     

%% [trace]  ?- old_royal_succession(Line).
%%    Call: (8) old_royal_succession(_8476) ? creep
%%    Call: (9) lists:append(_8694, _8696, _8476) ? creep
%%    Exit: (9) lists:append([], _8476, _8476) ? creep
%%    Call: (9) old_royal_succession_male_female([], male) ? creep
%% ^  Call: (10) findall((_8680, _8682), offspring(_8680, male, _8682), _8712) ? creep
%%    Call: (15) offspring(_8680, male, _8682) ? creep
%%    Exit: (15) offspring(prince_charles, male, 1) ? creep
%%    Redo: (15) offspring(_8680, male, _8682) ? creep
%%    Exit: (15) offspring(prince_andrew, male, 3) ? creep
%%    Redo: (15) offspring(_8680, male, _8682) ? creep
%%    Exit: (15) offspring(prince_edward, male, 4) ? creep
%% ^  Exit: (10) findall((_8680, _8682), user:offspring(_8680, male, _8682), [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%%    Call: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], _8784) ? creep
%%    Exit: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%% ^  Call: (10) apply:maplist(fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], []) ? creep
%%    Call: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [], user:fst) ? creep
%%    Fail: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [], user:fst) ? creep
%% ^  Fail: (10) apply:maplist(user:fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], []) ? creep
%%    Fail: (9) old_royal_succession_male_female([], male) ? creep
%%    Redo: (9) lists:append(_8694, _8696, _8476) ? creep
%%    Exit: (9) lists:append([_8680], _8688, [_8680|_8688]) ? creep
%%    Call: (9) old_royal_succession_male_female([_8680], male) ? creep
%% ^  Call: (10) findall((_8692, _8694), offspring(_8692, male, _8694), _8724) ? creep
%%    Call: (15) offspring(_8692, male, _8694) ? creep
%%    Exit: (15) offspring(prince_charles, male, 1) ? creep
%%    Redo: (15) offspring(_8692, male, _8694) ? creep
%%    Exit: (15) offspring(prince_andrew, male, 3) ? creep
%%    Redo: (15) offspring(_8692, male, _8694) ? creep
%%    Exit: (15) offspring(prince_edward, male, 4) ? creep
%% ^  Exit: (10) findall((_8692, _8694), user:offspring(_8692, male, _8694), [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%%    Call: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], _8796) ? creep
%%    Exit: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%% ^  Call: (10) apply:maplist(fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680]) ? creep
%%    Call: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680], user:fst) ? creep
%%    Call: (12) fst((prince_charles, 1), _8680) ? creep
%%    Exit: (12) fst((prince_charles, 1), prince_charles) ? creep
%%    Call: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [], user:fst) ? creep
%%    Fail: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [], user:fst) ? creep
%%    Fail: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680], user:fst) ? creep
%% ^  Fail: (10) apply:maplist(user:fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680]) ? creep
%%    Fail: (9) old_royal_succession_male_female([_8680], male) ? creep
%%    Redo: (9) lists:append([_8680|_8682], _8708, [_8680|_8688]) ? creep
%%    Exit: (9) lists:append([_8680, _8692], _8700, [_8680, _8692|_8700]) ? creep
%%    Call: (9) old_royal_succession_male_female([_8680, _8692], male) ? creep
%% ^  Call: (10) findall((_8704, _8706), offspring(_8704, male, _8706), _8736) ? creep
%%    Call: (15) offspring(_8704, male, _8706) ? creep
%%    Exit: (15) offspring(prince_charles, male, 1) ? creep
%%    Redo: (15) offspring(_8704, male, _8706) ? creep
%%    Exit: (15) offspring(prince_andrew, male, 3) ? creep
%%    Redo: (15) offspring(_8704, male, _8706) ? creep
%%    Exit: (15) offspring(prince_edward, male, 4) ? creep
%% ^  Exit: (10) findall((_8704, _8706), user:offspring(_8704, male, _8706), [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%%    Call: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], _8808) ? creep
%%    Exit: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%% ^  Call: (10) apply:maplist(fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680, _8692]) ? creep
%%    Call: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680, _8692], user:fst) ? creep
%%    Call: (12) fst((prince_charles, 1), _8680) ? creep
%%    Exit: (12) fst((prince_charles, 1), prince_charles) ? creep
%%    Call: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [_8692], user:fst) ? creep
%%    Call: (13) fst((prince_andrew, 3), _8692) ? creep
%%    Exit: (13) fst((prince_andrew, 3), prince_andrew) ? creep
%%    Call: (13) apply:maplist_([(prince_edward, 4)], [], user:fst) ? creep
%%    Fail: (13) apply:maplist_([(prince_edward, 4)], [], user:fst) ? creep
%%    Fail: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [_8692], user:fst) ? creep
%%    Fail: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680, _8692], user:fst) ? creep
%% ^  Fail: (10) apply:maplist(user:fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680, _8692]) ? creep
%%    Fail: (9) old_royal_succession_male_female([_8680, _8692], male) ? creep
%%    Redo: (9) lists:append([_8680, _8692|_8694], _8720, [_8680, _8692|_8700]) ? creep
%%    Exit: (9) lists:append([_8680, _8692, _8704], _8712, [_8680, _8692, _8704|_8712]) ? creep
%%    Call: (9) old_royal_succession_male_female([_8680, _8692, _8704], male) ? creep
%% ^  Call: (10) findall((_8716, _8718), offspring(_8716, male, _8718), _8748) ? creep
%%    Call: (15) offspring(_8716, male, _8718) ? creep
%%    Exit: (15) offspring(prince_charles, male, 1) ? creep
%%    Redo: (15) offspring(_8716, male, _8718) ? creep
%%    Exit: (15) offspring(prince_andrew, male, 3) ? creep
%%    Redo: (15) offspring(_8716, male, _8718) ? creep
%%    Exit: (15) offspring(prince_edward, male, 4) ? creep
%% ^  Exit: (10) findall((_8716, _8718), user:offspring(_8716, male, _8718), [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%%    Call: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], _8820) ? creep
%%    Exit: (10) sort(2, @=<, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%% ^  Call: (10) apply:maplist(fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680, _8692, _8704]) ? creep
%%    Call: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [_8680, _8692, _8704], user:fst) ? creep
%%    Call: (12) fst((prince_charles, 1), _8680) ? creep
%%    Exit: (12) fst((prince_charles, 1), prince_charles) ? creep
%%    Call: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [_8692, _8704], user:fst) ? creep
%%    Call: (13) fst((prince_andrew, 3), _8692) ? creep
%%    Exit: (13) fst((prince_andrew, 3), prince_andrew) ? creep
%%    Call: (13) apply:maplist_([(prince_edward, 4)], [_8704], user:fst) ? creep
%%    Call: (14) fst((prince_edward, 4), _8704) ? creep
%%    Exit: (14) fst((prince_edward, 4), prince_edward) ? creep
%%    Call: (14) apply:maplist_([], [], user:fst) ? creep
%%    Exit: (14) apply:maplist_([], [], user:fst) ? creep
%%    Exit: (13) apply:maplist_([(prince_edward, 4)], [prince_edward], user:fst) ? creep
%%    Exit: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [prince_andrew, prince_edward], user:fst) ? creep
%%    Exit: (11) apply:maplist_([(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [prince_charles, prince_andrew, prince_edward], user:fst) ? creep
%% ^  Exit: (10) apply:maplist(user:fst, [(prince_charles, 1),  (prince_andrew, 3),  (prince_edward, 4)], [prince_charles, prince_andrew, prince_edward]) ? creep
%%    Exit: (9) old_royal_succession_male_female([prince_charles, prince_andrew, prince_edward], male) ? creep
%%    Call: (9) old_royal_succession_male_female(_8712, female) ? creep
%% ^  Call: (10) findall((_8824, _8826), offspring(_8824, female, _8826), _8856) ? creep
%%    Call: (15) offspring(_8824, female, _8826) ? creep
%%    Exit: (15) offspring(princess_ann, female, 2) ? creep
%% ^  Exit: (10) findall((_8824, _8826), user:offspring(_8824, female, _8826), [(princess_ann, 2)]) ? creep
%%    Call: (10) sort(2, @=<, [(princess_ann, 2)], _8904) ? creep
%%    Exit: (10) sort(2, @=<, [(princess_ann, 2)], [(princess_ann, 2)]) ? creep
%% ^  Call: (10) apply:maplist(fst, [(princess_ann, 2)], _8712) ? creep
%%    Call: (11) apply:maplist_([(princess_ann, 2)], _8712, user:fst) ? creep
%%    Call: (12) fst((princess_ann, 2), _8896) ? creep
%%    Exit: (12) fst((princess_ann, 2), princess_ann) ? creep
%%    Call: (12) apply:maplist_([], _8898, user:fst) ? creep
%%    Exit: (12) apply:maplist_([], [], user:fst) ? creep
%%    Exit: (11) apply:maplist_([(princess_ann, 2)], [princess_ann], user:fst) ? creep
%% ^  Exit: (10) apply:maplist(user:fst, [(princess_ann, 2)], [princess_ann]) ? creep
%%    Exit: (9) old_royal_succession_male_female([princess_ann], female) ? creep
%%    Exit: (8) old_royal_succession([prince_charles, prince_andrew, prince_edward, princess_ann]) ? creep
%% Line = [prince_charles, prince_andrew, prince_edward, princess_ann].



% the main change is in `offspring(Name,_,Level)`, now the gender part 
% is replaced with `_` which means irrespective of gender. 
% Previously, we need to  use `offspring(Name,male,Level)` to 
% only consider males first.

new_royal_succession(Line):-
                     findall((Name,Level),offspring(Name,_,Level),Alls),
                     sort(2,@=<,Alls,Sorted),
                     maplist(fst,Sorted,Line).


fst((X,_),X).

% ?- new_royal_succession(Line).
% Line = [prince_charles, princess_ann, prince_andrew, prince_edward].


%% [trace]  ?-   new_royal_succession(Line).
%%    Call: (8) new_royal_succession(_8476) ? creep
%% ^  Call: (9) findall((_8686, _8688), offspring(_8686, _8694, _8688), _8718) ? creep
%%    Call: (14) offspring(_8686, _8694, _8688) ? creep
%%    Exit: (14) offspring(prince_charles, male, 1) ? creep
%%    Redo: (14) offspring(_8686, _8694, _8688) ? creep
%%    Exit: (14) offspring(princess_ann, female, 2) ? creep
%%    Redo: (14) offspring(_8686, _8694, _8688) ? creep
%%    Exit: (14) offspring(prince_andrew, male, 3) ? creep
%%    Redo: (14) offspring(_8686, _8694, _8688) ? creep
%%    Exit: (14) offspring(prince_edward, male, 4) ? creep
%% ^  Exit: (9) findall((_8686, _8688), user:offspring(_8686, _8694, _8688), [(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%%    Call: (9) sort(2, @=<, [(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], _8802) ? creep
%%    Exit: (9) sort(2, @=<, [(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], [(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)]) ? creep
%% ^  Call: (9) apply:maplist(fst, [(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], _8476) ? creep
%%    Call: (10) apply:maplist_([(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], _8476, user:fst) ? creep
%%    Call: (11) fst((prince_charles, 1), _8812) ? creep
%%    Exit: (11) fst((prince_charles, 1), prince_charles) ? creep
%%    Call: (11) apply:maplist_([(princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], _8814, user:fst) ? creep
%%    Call: (12) fst((princess_ann, 2), _8818) ? creep
%%    Exit: (12) fst((princess_ann, 2), princess_ann) ? creep
%%    Call: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], _8820, user:fst) ? creep
%%    Call: (13) fst((prince_andrew, 3), _8824) ? creep
%%    Exit: (13) fst((prince_andrew, 3), prince_andrew) ? creep
%%    Call: (13) apply:maplist_([(prince_edward, 4)], _8826, user:fst) ? creep
%%    Call: (14) fst((prince_edward, 4), _8830) ? creep
%%    Exit: (14) fst((prince_edward, 4), prince_edward) ? creep
%%    Call: (14) apply:maplist_([], _8832, user:fst) ? creep
%%    Exit: (14) apply:maplist_([], [], user:fst) ? creep
%%    Exit: (13) apply:maplist_([(prince_edward, 4)], [prince_edward], user:fst) ? creep
%%    Exit: (12) apply:maplist_([(prince_andrew, 3),  (prince_edward, 4)], [prince_andrew, prince_edward], user:fst) ? creep
%%    Exit: (11) apply:maplist_([(princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], [princess_ann, prince_andrew, prince_edward], user:fst) ? creep
%%    Exit: (10) apply:maplist_([(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], [prince_charles, princess_ann, prince_andrew, prince_edward], user:fst) ? creep
%% ^  Exit: (9) apply:maplist(user:fst, [(prince_charles, 1),  (princess_ann, 2),  (prince_andrew, 3),  (prince_edward, 4)], [prince_charles, princess_ann, prince_andrew, prince_edward]) ? creep
%%    Exit: (8) new_royal_succession([prince_charles, princess_ann, prince_andrew, prince_edward]) ? creep
%% Line = [prince_charles, princess_ann, prince_andrew, prince_edward].






