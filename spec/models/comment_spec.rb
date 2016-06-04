require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:post) {Post.create!(title: "This is the title", body: "This is the body")}
  let(:comment) {Comment.create!(body: 'This is the comment body', post: post)}

  describe "attributes" do
    it "has a body attribute" do
      expect(comment).to have_attributes(body: 'This is the comment body' )
    end
  end
end
