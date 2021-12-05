defmodule Day01Test do
  use ExUnit.Case
  doctest Day01

  test "count_incresaes" do
    assert Day01.count_increases("test.txt") == 7
  end

  test "puzzle2" do
    assert Day01.count_triplles("test.txt") == 5
  end
end
