defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = String.to_integer(text)
    num
  end

  def factorial(x) do
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 27]
    factors = []
    cond do
      rem(x, hd primes) == 1 ->
        factors
      rem(x, hd primes) == 0 ->
        z = hd primes
        factors ++ z
        factorial(div(x, hd primes))
      rem(x, hd primes) != 0 ->
        primes = tl primes
        factorial(div(x, hd primes))
    end
  end

end
