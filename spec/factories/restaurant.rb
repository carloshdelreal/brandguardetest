# frozen_string_literal: true

FactoryBot.define do
  factory :restaurant do
    sequence(:name) { |n| "restaurant_#{n}" }
    chain { FactoryBot.create(:chain)}
    country { FactoryBot.create(:country)}
    sequence(:address) { |n| "address_#{n}" }
  end
end

