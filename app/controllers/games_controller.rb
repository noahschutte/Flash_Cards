get '/games/:game_id/cards/:id' do
  @user = User.find_by(id: session[:user_id])
  @card = Card.find_by(id: params[:id])
  @game = Game.find_by(id: params[:game_id])
  @deck = Deck.find_by(id: @card.deck_id)
  # until @cards.length == 0
  #   question = @cards.sample.question

  # end

  erb :'/cards/show'

end

post '/games' do
  @user = User.find_by(id: session[:user_id])
  @game = Game.new(user_id: @user.id, deck_id: params[:deck_id])
  if @game.save!
    card = select_card(params[:deck_id])
    redirect "/games/#{@game.id}/cards/#{card.id}"
  else
    redirect 'https://www.linkedin.com/in/samuelblackman'
  end
end

post 'games/:game_id/cards/:card_id/guess' do
  @card = Card.find_by(id: params[:card_id])
  @game = Game.find_by(id: params[:game_id])
  # @deck = Deck.find_by(id: @card.deck_id)
  response = params[:response]
  evaluation = compare_answer(@card, response)
  guess = Guess.create(game: @game.id, card: @card.id, correct?: evaluation)
end
