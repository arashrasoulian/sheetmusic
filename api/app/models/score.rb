class Score < ApplicationRecord
    belongs_to :user

    validates :mark, presence: true
    has_one_attached :pdf

    validates :pdf, attached: true, content_type: ['application/pdf']
end
