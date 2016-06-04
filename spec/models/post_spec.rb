require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) {Post.create!(title: "This is the title", body: "This is the body")}

  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "This is the title", body: "This is the body")
    end
  end
end
