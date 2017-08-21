require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) {Advertisement.create!(title: 'New Ad title', body:'New Ad body',price:50)}

  describe "attributes" do
    it "has title, body and price" do
      expect(advertisement).to have_attributes(title: 'New Ad title', body:'New Ad body',price:50)
    end
  end
end
