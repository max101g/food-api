class User < ApplicationRecord
    has_many :userposts
    has_many :posts, through: :userposts

    validates :username, uniqueness: true
    has_secure_password
end
