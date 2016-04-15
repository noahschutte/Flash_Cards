get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save!
    session[:user_id] = @user.id
    redirect "user/#{@user.id}"
  else
    erb :'/users/new'
  end
end


# get '/user/:id/edit' do
#   @user = User.find_by(id: params[:id])
#   erb :'/user/edit'
# end

# put '/user/:id' do
#   @user = User.find_by(id: params[:id])
#   if params[:password].strip == "" || params[:password].strip == nil
#     @user.update_attributes(name: params[:name], email: params[:email])
#   else
#     @user.update_attributes(name: params[:name], email: params[:email], password: params[:password].strip)
#   end
#   redirect "/user/#{@user.id}"
# end

# get '/user/:id' do
#   required_logged_in
#   @user = User.find_by(id: params[:id])

#   if @user && session[:user_id] == @user.id
#     erb :'/user/user_show'
#   else
#     redirect '/'
#   end
# end

# delete '/user/:id' do
#   session.clear
#   redirect '/'
# end
