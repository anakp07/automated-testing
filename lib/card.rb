
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    valid_card = [:clubs, :diamonds,:hearts, :spades]
    unless valid_card.include?(suit)
      raise ArgumentError.new("Suit must be Clubs, Diamonds, Hearts or Spades")
    end

    if value < 1 || value > 13
      raise ArgumentError.new("Invalid card")
    end

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
