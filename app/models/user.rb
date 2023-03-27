class User < ApplicationRecord
    has_many :userposts
    has_many :posts, through: :userposts

    validates :username, uniqueness: true
    validates :name, presence: true
    validates :image, presence: true
    validates :password, presence: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
