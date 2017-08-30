% Fernando Barroso Noleto
% exercicios em prolog

% 1
cubo(X,Y) :- Y is X*X*X.

% 2
raiz(A,B,C,R,RA) :- 
	R is ((-B + sqrt((B * B)-(4*A*C))) / (2*A)),
	RA is ((-B - sqrt((B * B)-(4*A*C))) / (2*A)). 

% 3
concatenar([], L, L).
concatenar([H|T], L, [H|D]) :- concatenar(T, L, D).
inverte([], []).
inverte([H|T], L) :- inverte(T, X), concatenar(X, [H], L).

% 4
do_list(N,L) :- I is 10, do_list1(N, I, [], L1), inverte(L1, L).

do_list1(0, _, L, L) :- !.
do_list1(N, I, R, L) :-
	N > 0, I1 is I*2,
	N1 is N-1,
	do_list1(N1, I1, [I|R],L).

% 5
do_list_j(N, J, L) :- I is 100, do_listd(N, I, J, [], L1), inverte(L1, L).

do_listd(0, _, _, L, L) :- !.
do_listd(N, I, J, R, L) :-
	N > 0, I1 is I+(I*(J/100)),
	N1 is N-1,
	do_listd(N1, I1, J, [I|R], L).
	
% 6
taylor(X,Y) :- do_t(X, X, 1, Y).

fact(0, 1).
fact(N, F) :-  N > 0, N1 is N-1, fact(N1, F1), F is N * F1.

do_t(0, _, Y, Y) :- !.
do_t(C, X, I, Y) :- 
	C > 0,
	C1 is C-1,
	fact(C1, F),
	I1 is I+((X**C1)/F),
	do_t(C1, X, I1, Y).

% 7
insereFim(T, [H], L):- insereInicio(H,[T],L), !.
insereFim(N, [H|T], L):- insereFim(N,T,X), insereInicio(H, X, L).
insereInicio(H, L, [H|L]):- !.

% 8
sort().

