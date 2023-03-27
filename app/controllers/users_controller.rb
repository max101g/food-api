class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActionController::UnpermittedParameters, with: :handle_errors

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user
    end

    private

    def find_user
        User.find(params[:id])
    end

    def user_params
        params.permit(:name, :username, :email, :password, :image)
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found 
    end

    def render_unprocessable_entity_response(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def handle_errors
        render json: { "Unpermitted Parameters": params.to_unsafe_h.except(:controller, :action, :name, :description)}, status: :unprocessable_entity 
    end

end
