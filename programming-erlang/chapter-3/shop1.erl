-module(shop1).
-export([total/1]).

total([{Item, N}|T]) -> shop:cost(Item) * N + total(T);
total([]) -> 0.
