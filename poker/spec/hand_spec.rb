require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) { Hand.new}

  describe "::deal_from" do
    it "deals a hand of five cards" do
      deck_cards = [
        Card.new(:spades, :deuce),
        Card.new(:spades, :three),
        Card.new(:spades, :king),
        Card.new(:spades, :seven),
        Card.new(:hearts, :nine)
      ]

      deck = double("deck")
      expect(deck).to receive(:take).with(5).and_return(deck_cards)

      hand = Hand.deal_from(deck)

      expect(hand.cards).to eq(deck_cards)
    end
  end

  describe "#hand_category" do
    context "when hand is a straight flush" do
      straight_flush_hand = hand.cards =
      [
        Card.new(:spades, :deuce),
        Card.new(:spades, :three),
        Card.new(:spades, :four),
        Card.new(:spades, :five),
        Card.new(:spades, :six)
      ]

      it "identifies straight flush" do
        expect(straight_flush_hand.hand_category).to eq(:straight_flush)
      end

    end

  end


end
