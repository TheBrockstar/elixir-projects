defmodule Cards do

  # Create a deck by iterating through a list of
  # suits and a list of values.
  def create_deck do
    values = ["Ace","Two","Three","Four","Five"]
    suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end
  end

  # Return a deck of cards that matches a shuffled
  # version of the deck passed in as an argument.
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # Check if a Card exists within a deck, and
  # return True it does, False if not
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
