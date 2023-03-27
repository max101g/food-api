class Post < ApplicationRecord
    has_one :userpost
    has_one :user, through: :userpost
end
