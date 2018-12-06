:- use_module(interface, []).

format_file(Path, TabSize, TabDistance) :-
  read_file_to_string(Path, S, []),
  formatter:format_prolog_source(TabSize, TabDistance, S, S).

format_file(Path) :-
  format_file(Path, 4, 4).
  
