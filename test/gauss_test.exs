defmodule GAUSSTest do
  use ExUnit.Case
  doctest GAUSS

  test "greets the world" do
    assert GAUSS.hello() == :world
  end
end
