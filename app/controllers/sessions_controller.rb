class SessionsController < ApplicationController

    skip_before_action :authorize

    def create
      user = User.find_by(username: params[:username])
      puts "*******"
      puts "This is it"
      puts "*******"
  
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
  
        # Generate a new token and store it for the user
        token = SecureRandom.hex
        user.update(auth_token: token)
  
        render json: { user: user, auth_token: token }, status: :created
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end

    def destroy
        session.delete(:user_id)
        head :no_content
    end

end
