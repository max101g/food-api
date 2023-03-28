class Post < ApplicationRecord
    has_one :userpost
    has_one :user, through: :userpost, class_name: 'User'
  
    validates :image, presence: true
    validates :location, presence: true
end
  