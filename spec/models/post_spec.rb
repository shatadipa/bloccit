require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) {Post.create!(title: 'New Post Title',  body: 'New Post Body')}

  describe "attribes" do
    it "has title and body" do
      expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
    end
  end

end
