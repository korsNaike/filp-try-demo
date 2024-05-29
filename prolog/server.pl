:- module(server,
      [ server/1            % ?Port
      ]).

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_files)).
:- use_module(library(http/http_unix_daemon)).
:- use_module(library(http/http_log)).
:- use_module(library(http/http_dyn_workers)).
:- http_handler(root(.), http_reply_from_files('.', []), [prefix]).

server(Port) :-
    http_server(http_dispatch,
                [ port(Port),
                  workers(16)
                ]).
