class Restaurant < ApplicationRecord
  belongs_to :chain
  belongs_to :country
end
