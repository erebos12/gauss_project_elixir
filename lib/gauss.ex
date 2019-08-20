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

  @doc """
  Problem 2: Even Fibonacci numbers
  Each new term in the Fibonacci sequence is generated by adding the previous two terms.
  By starting with 1 and 2, the first 10 terms will be:

      1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  By considering the terms in the Fibonacci sequence whose values do not exceed four million,
  find the sum of the even-valued terms.

  ## Examples

      iex> GAUSS.fib_even_sum(4)
      2
      iex> GAUSS.fib_even_sum(3)
      0
      iex> GAUSS.fib_even_sum(10)
      44
  """
  def fib_even_sum(max) do
    Enum.map(0..max-1, fn(x) -> fib(x) end)
    |> Enum.filter(fn(x) -> x < 4000000 end)
    |> Enum.filter(fn(x) -> rem(x,2) == 0 end)
    |> Enum.sum
  end

  @doc """
  ## Examples

      iex(1)> GAUSS.is_prime(1)
      false
      iex> GAUSS.is_prime(2)
      true
      iex(1)> GAUSS.is_prime(3)
      true
      iex(2)> GAUSS.is_prime(4)
      false
      iex(3)> GAUSS.is_prime(5)
      true
      iex(4)> GAUSS.is_prime(6)
      false
      iex(5)> GAUSS.is_prime(7)
      true
      iex(6)> GAUSS.is_prime(8)
      false
  """
  def is_prime(1), do: false
  def is_prime(2), do: true
  def is_prime(a) when is_integer(a) do
      Enum.take_while(2..a-1, fn(x) -> rem(a, x) == 0 end) |> Enum.count == 0
  end

  @doc """
  ## Examples

    iex> GAUSS.find_smallest_prime_factor(1)
    nil
    iex> GAUSS.find_smallest_prime_factor(200)
    2
    iex> GAUSS.find_smallest_prime_factor(15)
    3
    iex> GAUSS.find_smallest_prime_factor(16)
    2
    iex> GAUSS.find_smallest_prime_factor(17)
    17
    iex> GAUSS.find_smallest_prime_factor(25)
    5
  """
  def find_smallest_prime_factor(a) when is_integer(a) do
    Enum.filter(1..a, fn x  -> rem(a,x) == 0 and is_prime(x) end) |> Enum.at(0)
  end


  def prime_factorization(1, l), do: l
  def prime_factorization(a, l) do
      prime_factor = find_smallest_prime_factor(a)
      l = [prime_factor | l]
      div(a, prime_factor) |> prime_factorization(l)
  end

  @doc """
  ## Examples

    iex> GAUSS.max_prime_factor(3)
    3
    iex> GAUSS.max_prime_factor(25)
    5
    iex> GAUSS.max_prime_factor(120)
    5
    iex> GAUSS.max_prime_factor(30)
    5
    iex> GAUSS.max_prime_factor(1200)
    5
  """
  def max_prime_factor(a) do
     a |> prime_factorization([]) |> Enum.max
  end


  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)

end
