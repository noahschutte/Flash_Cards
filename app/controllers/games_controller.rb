get '/games/:game_id/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  @game = Game.find_by(id: params[:game_id])
  @cards = Deck.cards - correct_cards
  until @cards.length == 0
    question = @cards.sample.question

  end

  erb :'/games/new'
end
