class WordFormation < ApplicationRecord
    # Validation
    validates :question, presence: true
    validates :answer, presence: true
    validates :keyword, presence: true
end
