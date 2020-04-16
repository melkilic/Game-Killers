class Trivium < ApplicationRecord
    has_many(:questions)
    has_many(:games)
    has_many(:users, through: :games)
end