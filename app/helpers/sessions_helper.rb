module SessionsHelper
    #Logs in the user
    def log_in(user)
        session[:user_id] = user.id
    end

    #Returns current user if any.
    def current_user
        # if @current_user.nil?
        #     @current_user = User.find_by(id: session[:user_id])
        #   else
        #     @current_user
        # end

        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def log_out
    reset_session
    @current_user = nil
  end
end
