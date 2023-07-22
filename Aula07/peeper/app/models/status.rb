class Status < ApplicationRecord
    belongs_to :user
    belongs_to :status_answer , class_name: "Status", optional: true

    has_many :medium
end
