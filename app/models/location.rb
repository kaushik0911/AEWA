class Location < ApplicationRecord
  enum status: [:pending, :negotiating, :accepted, :inprogress, :hold, :completed, :canceled]
end
