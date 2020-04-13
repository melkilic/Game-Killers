class Question < ApplicationRecord
    belongs_to(:trivia)
    # has_many(:answers)
end