defmodule GAUSSTest do
  use ExUnit.Case
  doctest GAUSS

  @tag timeout: :infinity
  test "sum of fibonacci even elements" do
    assert GAUSS.fib(2) == 1
    assert GAUSS.fib(5) == 5
    assert GAUSS.fib(6) == 8
  end

  @tag timeout: :infinity
  test "prime factorization" do
    assert GAUSS.prime_factorization(3, []) == [3]
    assert GAUSS.prime_factorization(25, []) == [5, 5]
    assert GAUSS.prime_factorization(120, []) == [5, 3, 2, 2, 2]
    assert GAUSS.prime_factorization(30, []) == [5, 3, 2]
    assert GAUSS.prime_factorization(13195, []) == [29, 13, 7, 5]
  end

  @tag timeout: :infinity
  test "max prime factor" do
    assert GAUSS.max_prime_factor(13195) == 29
    assert GAUSS.max_prime_factor(30) == 5
  end

  @tag timeout: :infinity
  test "find smallest prime factor 2" do
    assert GAUSS.find_smallest_prime_factor(200) == 2
    assert GAUSS.find_smallest_prime_factor(15) == 3
    assert GAUSS.find_smallest_prime_factor(16) == 2
    assert GAUSS.find_smallest_prime_factor(17) == 17
    assert GAUSS.find_smallest_prime_factor(25) == 5
    assert GAUSS.find_smallest_prime_factor(1) == nil
    assert GAUSS.find_smallest_prime_factor(2) == 2
  end
end
