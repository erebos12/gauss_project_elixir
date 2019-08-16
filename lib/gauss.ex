defmodule GAUSS do
  @moduledoc """
  Documentation for GAUSS.
  """

  @doc """
  Problem 1: Multiples of 3 and 5
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.

  ## Examples

      iex> GAUSS.multiples_of_3_and_5(1000)
      233168
      iex> GAUSS.multiples_of_3_and_5(10)
      23

  """
  def multiples_of_3_and_5(below) do
      Enum.filter(0..below-1, fn(x) -> rem(x, 3) == 0 or rem(x, 5) == 0 end) |> Enum.sum
  end

end
