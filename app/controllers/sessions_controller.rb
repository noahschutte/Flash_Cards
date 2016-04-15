get '/login' do
  erb :'sessions/new'
end

post '/login' do
  if @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/user/#{ @user.id }"
    else
      redirect '/'
    end
  else
    redirect '/'
  end
end
