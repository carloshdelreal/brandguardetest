require 'rails_helper'

RSpec.describe Review, type: :model do
  context 'It creates a valid review' do
    it 'Creates a Review' do
      expect(FactoryBot.build(:review)).to be_valid
    end

    it 'with empty text' do
      expect(FactoryBot.build(:review, review_text: nil)).to be_valid
    end
  end

  context "It can't create an invalid review" do
    it 'with empty user' do
      expect(FactoryBot.build(:review, user: nil)).not_to be_valid
    end

    it 'with empty restaurant' do
      expect(FactoryBot.build(:review, restaurant: nil)).not_to be_valid
    end

    it 'with empty grade' do
      expect(FactoryBot.build(:review, review_grade: nil)).not_to be_valid
    end
  end
end
