# Even Fibonacci numbers
# https://projecteuler.net/problem=2

defmodule Program do

  def run do
    n_2 = 1 # Bootstap: first number is 1
    n_1 = 2 # Bootstrap: second number is 2
    sum = 2 # Bootstrap: sum is 2

    n = n_2 + n_1 # Next number in sequence

    process(n_1, n, sum)
  end

  # Find next number in sequence. If it is not higher than 4 million
  # then process it (add to `sum` if even), otherwise return `sum`
  defp process(n_2, n_1, sum) do
    n = n_2 + n_1
    if n <= 4_000_000 do
      process(n_1, n, sum, rem(n, 2))
    else
      sum
    end
  end
  defp process(n_1, n, sum, 0) do
    sum = sum + n
    process(n_1, n, sum)
  end
  defp process(n_1, n, sum, _), do: process(n_1, n, sum)

end

Program.run |> IO.puts
