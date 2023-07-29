class Status < ApplicationRecord
    validates :medium, length: { maximum: 4 }
    belongs_to :user

    belongs_to :in_response_to, class_name: 'Status', optional: true
    has_many :responses, class_name: 'Status', foreign_key: 'in_response_to_id'

    has_many :medium
end
