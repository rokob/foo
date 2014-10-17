-module(foo_api_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    foo_api_sup:start_link().

stop(_State) ->
    ok.

% Test

-include_lib("eunit/include/eunit.hrl").

foo_test_() ->
  [
    {"This is it",
      fun() ->
        false = 1 + 1
      end},
    {"This works",
      fun() ->
        2 = 1 + 1
      end}
  ].
