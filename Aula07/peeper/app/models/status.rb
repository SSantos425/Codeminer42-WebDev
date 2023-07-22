class Status < ApplicationRecord
    belongs_to :user
    belongs_to :status_answer , class_name: "Status"

    has_many :medium, limit: 4
end
