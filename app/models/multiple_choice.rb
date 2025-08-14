class MultipleChoice < ApplicationRecord
    # Validation
    validates :question, presence: true
    validates :answer, presence: true
    validates :a, presence: true
    validates :b, presence: true
    validates :c, presence: true
    validates :d, presence: true
end
