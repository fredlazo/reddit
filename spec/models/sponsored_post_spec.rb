require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:sponsored_post) { SponsoredPost.create!(title: "New Post Title", body: "New Post Body", price: 100) }

# #2
describe "attributes" do
  it "has title and body attributes" do
    expect(sponsored_post).to have_attributes(title: "New Post Title", body: "New Post Body", price: 100)
  end
end
end
