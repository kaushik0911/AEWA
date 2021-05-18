class Location < ApplicationRecord
  # enum status: [:pending, :negotiating, :accepted, :inprogress, :hold, :completed, :canceled]
  has_one :contract
end
