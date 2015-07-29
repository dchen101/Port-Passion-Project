module WelcomeHelper
  def current_user
    # TODO: return the current user if there is a user signed in.
    if session[:email]
      User.where(email: session[:email]).first
    end
  end

  def sign_in
    @user = User.find_by(email: params[:email])
    if @user
      if @user.password == params[:password] #checks if password matches.
        p params[:password]
        session[:email]=params[:email]
        p session[:email]
        redirect "/users/#{@user.id}"
      else
        redirect '/sessions/new' #if pw does not match session is set back to new
      end
    else
      redirect '/sessions/new' #if no user of the name is found
    end
  end

end
