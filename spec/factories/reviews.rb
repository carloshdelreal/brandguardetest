# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    user { FactoryBot.create(:user)}
    restaurant { FactoryBot.create(:restaurant)}
    sequence(:review_text) { |n| "text_#{n}" }
    sequence(:review_grade) { (1...5).step(1).to_a.sample }
  end
end

