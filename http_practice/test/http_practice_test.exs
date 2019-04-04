defmodule HttpPracticeTest do
  use ExUnit.Case
  doctest HttpPractice

  test "greets the world" do
    assert HttpPractice.hello() == :world
  end
end
