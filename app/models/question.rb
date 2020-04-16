class Question < ApplicationRecord
    belongs_to(:trivium)
    has_many(:answers)
end