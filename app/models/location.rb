class Location < ApplicationRecord
  has_many :contract

  def address
    [street, city, zipcode].compact.map(&:capitalize).join(', ')
  end
end
