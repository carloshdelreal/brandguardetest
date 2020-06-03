# frozen_string_literal: true

FactoryBot.define do
  factory :chain do
    sequence(:chain_name) { |n| "chain-#{n}" }
  end
end
