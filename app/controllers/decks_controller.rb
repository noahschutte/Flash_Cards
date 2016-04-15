get '/decks' do
  if session[:user_id]
    @user = User.find_by(id: session[:user_id])
  end
  @decks = Deck.all
  erb :'/decks/index'
end
