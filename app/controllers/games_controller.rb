get '/games/:game_id/cards/:id' do
  @user = User.find_by(id: session[:user_id])
  @card = Card.find_by(id: params[:id])
  @game = Game.find_by(id: params[:game_id])
  @deck = Deck.find_by(id: @card.deck_id)
  erb :'/cards/show'
end

post '/games' do
  @user = User.find_by(id: session[:user_id])
  @game = Game.new(user_id: @user.id, deck_id: params[:deck_id])
  if @game.save!
    card = select_card(params[:deck_id], @game.id)
    redirect "/games/#{@game.id}/cards/#{card.id}"
  else
    redirect 'https://www.linkedin.com/in/samuelblackman'
  end
end

post '/games/:game_id/cards/:card_id/guess' do
  @card = Card.find_by(id: params[:card_id])
  @deck = Deck.find_by(id: @card.deck_id)
  @game = Game.find_by(id: params[:game_id])
  response = params[:response]
  evaluation = compare_answer(@card, response)
  guess = Guess.create(game_id: @game.id, card_id: @card.id, correct?: evaluation)
  card = select_card(@deck.id, @game.id)
  if card == nil
    redirect "/games/#{@game.id}"
  else
    redirect "/games/#{@game.id}/cards/#{card.id}"
  end
end

get '/games/:id' do
  @user = User.find_by(id: session[:user_id])
  @game = Game.find_by(id: params[:id])
  @deck = Deck.find_by(id: @game.deck_id)
  erb :'games/show'
end
