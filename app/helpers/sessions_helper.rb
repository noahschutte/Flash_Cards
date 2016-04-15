def logged_in?
  session[:user_id] && User.find_by(id: session[:user_id] )
end
