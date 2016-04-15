def logged_in?
  session[:user_id] && User.find_by(id: session[:user_id] )
end

def required_logged_in
  redirect "/" unless logged_in?
end

helpers do
  def current_user
    User.find_by(id: session[:user_session_id])
  end

  def logged_in?
    !!(current_user)
  end

  def author(post_id)
    post = Post.find_by(id: post_id)
    User.find_by(id: post.user_id)
  end

  def post_author(post_id)
    found_user = user(post_id)
     if found_user
      return found_user.username
     else
      return "Unknown"
     end
  end

  def author?(entry_id)
    current_user && current_user.email == author(entry_id).email
  end
end
