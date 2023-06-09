class PostsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActionController::UnpermittedParameters, with: :handle_errors
  
    skip_before_action :authorize, only: [:index, :create]
  
    def index
      posts = Post.all 
      render json: posts
    end
  
    def create
      post = Post.create!(post_params)
      render json: post
    end

    def update
      post = find_post
      post.update!(post_params)
      render json: post
    end
  
    private
  
    def find_post
      Post.find(params[:id])
    end
  
    def post_params
      params.require(:post).permit(:location, :image)
    end
  
    def render_not_found_response
      render json: { error: "Post not found" }, status: :not_found 
    end
  
    def render_unprocessable_entity_response(invalid)
      render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
  
    def handle_errors
      render json: { "Unpermitted Parameters": params.to_unsafe_h.except(:controller, :action, :name, :description)}, status: :unprocessable_entity 
    end
  end

