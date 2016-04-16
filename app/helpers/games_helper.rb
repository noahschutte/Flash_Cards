def select_card(deck_id)
  deck = Deck.find_by(id: deck_id)
  initial_deck = deck.cards
  correct_cards = Guess.all.where(correct?: true).collect {|g| g.card}
  playable_cards = initial_deck - correct_cards
  playable_cards.sample
end
