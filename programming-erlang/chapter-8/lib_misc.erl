-module(lib_misc).

-compile(export_all).

sleep(T) ->
    receive
    after T ->
            true
    end.

flush_buffer() ->
    receive
        _Any ->
            flush_buffer()
    after 0 ->
            true
    end.

priority_receive() ->
    receive
        {alarm, X} ->
            {alarm, X}
    after 0 ->
            receive
                Any ->
                    Any
            end
    end.
