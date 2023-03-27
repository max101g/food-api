class User < ApplicationRecord
    has_many :userposts
    has_many :posts, through: :userposts

    has_secure_password
end
