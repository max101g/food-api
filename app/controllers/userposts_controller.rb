class UserpostsController < ApplicationController

    def index
        userposts = Userpost.all
        render json: userposts
    end

end
