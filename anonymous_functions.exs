list_concat = fn([a, b], [c, d]) ->
  [a, b, c, d]
end

sum = fn(x, y, z) ->
  x + y + z
end

pair_tuple_to_list = fn({a, b}) ->
  [a, b]
end

list_concat.([1, 2], [3, 4])
sum.(1, 2, 3)
pair_tuple_to_list.({1, 2})


fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, z) -> z 
end

rem_buzzer = fn(n) ->
  fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

prefix = fn(prefix) ->
  fn(suffix) -> "#{prefix} #{suffix}" end
end

Enum.map([1,2,3,4], &(&1 +2))
Enum.map([1,2,3,4], &(IO.inspect(&1)))