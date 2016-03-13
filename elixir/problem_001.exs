# Multiples of 3 and 5
# https://projecteuler.net/problem=1

defmodule Program do

  def run do
    Enum.reduce(1..999, 0, &reduce/2)
  end

  defp reduce(num, sum) do
    rem(num, 3) |> handle_remainder_3(num, sum)
  end

  defp handle_remainder_3(0, num, sum), do: sum + num
  defp handle_remainder_3(_, num, sum) do
    rem(num, 5) |> handle_remainder_5(num, sum)
  end

  defp handle_remainder_5(0, num, sum), do: sum + num
  defp handle_remainder_5(_, _, sum), do: sum

end

Program.run |> IO.puts
