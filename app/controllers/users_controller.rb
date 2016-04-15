get '/users/new' do
  erb :'/users/new'
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'/users/show'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save!
    session[:user_id] = @user.id
    redirect "users/#{@user.id}"
  else
    erb :'/users/new'
  end
end

delete '/users/:id' do
  session.clear
  redirect '/'
end
