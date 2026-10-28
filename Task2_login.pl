user_credentials(ahmed, pass123).
user_credentials(norah, secret456).
user_credentials(ashwaq, am223).

login :-
    attempt_login(3).

attempt_login(0) :-
    writeln('Sorry, you exceeded the maximum number of attempts, try again later.').

attempt_login(AttemptsLeft) :-
    AttemptsLeft > 0,
    write('Enter username: '),
    read(User),
    write('Enter password: '),
    read(Pass),
    check(User, Pass, AttemptsLeft).

% Clause 1: Success check
check(User, Pass, _) :-
    user_credentials(User, Pass),
    !,
    writeln('Login Successful').

% Clause 2: Failure fallback
check(_, _, AttemptsLeft) :-
    writeln('Login Unsuccessful'),
    Remaining is AttemptsLeft - 1,
    (   Remaining > 0
    ->  format('You have ~w attempt(s) remaining. ~n~n', [Remaining]),
        attempt_login(Remaining)
    ;   attempt_login(0)
    ).