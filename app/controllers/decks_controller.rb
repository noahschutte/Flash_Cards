get '/decks' do
  if session[:user_id]
    @user = User.find_by(id: session[:user_id])
  end
  @decks = Deck.all
  erb :'/decks/index'
end

get '/decks/:id' do
  @user = User.find_by(id: session[:user_id])
  @deck = Deck.find_by(id: params[:id])
  erb :'decks/show'
end
