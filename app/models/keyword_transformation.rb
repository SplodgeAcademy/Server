class KeywordTransformation < ApplicationRecord
    # Validation
    validates :question, presence: true
    validates :answer, presence: true
    validates :keyword, presence: true
    validates :prompt, presence: true
end
