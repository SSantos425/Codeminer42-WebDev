require 'rails_helper'

RSpec.describe Medium, type: :model do
  it 'user can upload a image' do
    sam = User.create(handle: "sam")
    avatar = Medium.create(url:"mango_tree")
    sam.medium = avatar

    expect(sam.medium.url).to eq('mango_tree')

  end

  it 'a midia belongs to a status ' do
    sam = User.create(handle: "sam")
    status = Status.create(body: "Hi everybody",user: sam)
    avatar = Medium.create(url:"mango_tree", status: status)


    expect(avatar.status).to eq(status)

  end
end