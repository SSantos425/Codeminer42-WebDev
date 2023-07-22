class User < ApplicationRecord
    has_many :statuses
    has_many :followers, class_name: "User", foreign_key: "follower_id", dependent: :destroy
end
