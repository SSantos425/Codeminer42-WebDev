class User < ApplicationRecord
    has_one :medium
    has_many :statuses

    has_many :follower_connections, class_name: 'Connection', foreign_key: 'followed_id'
    has_many :followers, through: :follower_connections, source: :follower

    has_many :following_connections, class_name: 'Connection', foreign_key: 'follower_id'
    has_many :followings, through: :following_connections, source: :followed
end
  