class PostsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActionController::UnpermittedParameters, with: :handle_errors

    def index
        posts = Post.all 
        render json: posts
    end

    def create
        user = User.create!(post_params)
        render json: user
    end

    private

    def post_params
        params.permit(:location, :image)
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
