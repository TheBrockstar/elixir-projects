defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  # test "greets the world" do
  #   assert Cards.hello() == "G'day Mate!"
  # end

  test "creates a deck" do
    assert Cards.create_deck() == ["Ace","Two","Three"]
  end
end
