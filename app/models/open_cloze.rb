class OpenCloze < ApplicationRecord
    # Validation
    validates :question, presence: true
    validates :answer, presence: true
end
