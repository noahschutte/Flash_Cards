def select_card(deck_id, game_id)
  deck = Deck.find_by(id: deck_id)
  initial_deck = deck.cards
  game = Game.find_by(id: game_id)
  guesses = game.guesses
  correct_cards = guesses.where(correct?: true).collect {|g| g.card}
  playable_cards = initial_deck - correct_cards
  playable_cards.sample
end

def first_guess(game_id)
  game_hash = Guess.where(game_id: game_id).group(:card_id).count
  game_hash.select { |key, value| value == 1}.count
end

def total_guesses(game_id)
  Guess.where(game_id: game_id).count
end

def deck_array(user_id)
  deck_array = []
  @user = User.find_by(id: user_id)
  games = @user.games
  deck_id_array = games.collect { |game| game.deck_id }.uniq
  deck_id_array.each do |deck_id|
    deck_array << Deck.find(deck_id)
  end
  deck_array
end

def games_array(deck, user_id)
  Game.where(user_id: user_id).where(deck_id: deck)
end
