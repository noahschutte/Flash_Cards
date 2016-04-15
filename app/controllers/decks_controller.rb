# get '/decks' do
#   @decks = Deck.all
#   erb :'/deck/index'
# end

get '/decks' do
  # if session[:user_id]
  #   @user = User.find_by(id: session[:user_id])
  #   redirect "/user/#{ @user.id }"
  # else
  # end
    erb :'/decks/index'
end


