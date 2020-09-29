class Lifter < ApplicationRecord
    has_many :exerciselogs
    has_many :exercises, through: :exerciselogs
end
