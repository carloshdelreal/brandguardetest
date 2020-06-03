require 'rails_helper'

RSpec.describe Country, type: :model do
  context 'It creates a valid country' do
    it 'Creates a country' do
      expect(FactoryBot.build(:country)).to be_valid
    end
  end

  context "It can't create a valid country" do
    it 'with empty string' do
      expect(FactoryBot.build(:country, name: '')).not_to be_valid
    end
  end
end
