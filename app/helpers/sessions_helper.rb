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
end
