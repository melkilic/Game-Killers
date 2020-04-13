class User < ApplicationRecord
    has_many(:games)
    has_many(:trivia, through: :games)
end