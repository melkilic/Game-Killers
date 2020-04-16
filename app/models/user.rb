class User < ApplicationRecord
    has_many(:games)
    has_many(:trivium, through: :games)
    has_secure_password()


end