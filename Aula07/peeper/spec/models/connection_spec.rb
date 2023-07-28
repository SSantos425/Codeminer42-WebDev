require 'rails_helper'

RSpec.describe Connection, type: :model do
    it 'A connection is created' do
        sam = User.create(handle: "sam")
        james = User.create(handle: "james")

        sam_follows_james = Connection.create(follower: sam, followed: james)

        expect(sam_follows_james.follower).to eq(sam)
    end
end
