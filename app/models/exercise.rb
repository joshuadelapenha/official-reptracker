class Exercise < ApplicationRecord
    has_many :exerciselogs
    has_many :lifters, through: :exerciselogs
end
