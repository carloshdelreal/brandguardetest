require 'rails_helper'

RSpec.describe Chain, type: :model do
  context 'It creates a valid chain' do
    it 'Creates a country' do
      expect(FactoryBot.build(:chain)).to be_valid
    end
  end

  context "It can't create an invalid chain" do
    it 'with empty string' do
      expect(FactoryBot.build(:chain, chain_name: '')).not_to be_valid
    end
  end
end
