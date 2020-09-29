class Exerciselog < ApplicationRecord
    belongs_to :lifter
    belongs_to :exercise
end
