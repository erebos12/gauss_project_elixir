defmodule GAUSSTest do
  use ExUnit.Case
  doctest GAUSS

  test "is prime" do
    assert GAUSS.is_prime(1) == false
    assert GAUSS.is_prime(2) == true
    assert GAUSS.is_prime(3) == true
    assert GAUSS.is_prime(4) == false
    assert GAUSS.is_prime(5) == true
    assert GAUSS.is_prime(6) == false
    assert GAUSS.is_prime(7) == true
    assert GAUSS.is_prime(8) == false
  end

  test "sum of fibonacci even elements" do
    assert GAUSS.fib(2) == 1
    assert GAUSS.fib(5) == 5
    assert GAUSS.fib(6) == 8
  end

  test "prime factorization" do
    assert GAUSS.prime_factorization(3, []) == [3]
    assert GAUSS.prime_factorization(25, []) == [5, 5]
    assert GAUSS.prime_factorization(120, []) == [5, 3, 2, 2, 2]
    assert GAUSS.prime_factorization(30, []) == [5, 3, 2]
    assert GAUSS.prime_factorization(13195, []) == [29, 13, 7, 5]
  end

  test "max prime factor" do
    assert GAUSS.max_prime_factor(13195) == 29
    assert GAUSS.max_prime_factor(30) == 5
    assert GAUSS.max_prime_factor(3) == 3
    assert GAUSS.max_prime_factor(25) == 5
    assert GAUSS.max_prime_factor(120) == 5
    assert GAUSS.max_prime_factor(600851475143) == 6857
    assert GAUSS.max_prime_factor(1200) == 5
  end

  test "find smallest prime factor" do
    assert GAUSS.find_smallest_prime_factor(200) == 2
    assert GAUSS.find_smallest_prime_factor(15) == 3
    assert GAUSS.find_smallest_prime_factor(16) == 2
    assert GAUSS.find_smallest_prime_factor(17) == 17
    assert GAUSS.find_smallest_prime_factor(25) == 5
    assert GAUSS.find_smallest_prime_factor(1) == nil
    assert GAUSS.find_smallest_prime_factor(2) == 2
  end
end
