class Restaurant < ApplicationRecord
  belongs_to :chain
  belongs_to :country
  validates :name, presence: true
  validates :chain_id, presence: true
  validates :country_id, presence:true
  validates :address, presence: true
end
