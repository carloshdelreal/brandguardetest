require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context 'It creates a valid restaurant' do
    it 'Creates a restaurant' do
      expect(FactoryBot.build(:restaurant)).to be_valid
    end
  end

  context "It can't create a valid restaurant" do
    it 'with empty string' do
      expect(FactoryBot.build(:restaurant, name: '')).not_to be_valid
    end

    it 'with empty chain' do
      expect(FactoryBot.build(:restaurant, chain_id: nil)).not_to be_valid
    end

    it 'with empty country' do
      expect(FactoryBot.build(:restaurant, country_id: nil)).not_to be_valid
    end

    it 'with empty address' do
      expect(FactoryBot.build(:restaurant, address: '')).not_to be_valid
    end
  end
end
