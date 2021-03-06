require 'rails_helper'

RSpec.describe Question, type: :model do

  let(:question) {Question.create!(title: 'New Question', body: 'New Question body', resolved: true)}

  describe "attributes" do
    it "has title,body,resolved" do
      expect(question).to have_attributes(title: 'New Question', body: 'New Question body', resolved: true)
    end
  end
end
