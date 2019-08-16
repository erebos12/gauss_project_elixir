defmodule GAUSSTest do
  use ExUnit.Case
  doctest GAUSS

  @tag timeout: :infinity
  test "sum of fibonacci even elements" do
    assert GAUSS.fib(2) == 1
    assert GAUSS.fib(5) == 5
    assert GAUSS.fib(6) == 8
  end
end
