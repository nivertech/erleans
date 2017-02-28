%%%-------------------------------------------------------------------
%% @doc erleans public API
%% @end
%%%-------------------------------------------------------------------

-module(erleans_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    ets_provider:init(),
    erleans_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
