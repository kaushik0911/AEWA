class Location < ApplicationRecord
  has_many :project

  def address
    [street, city, zipcode].compact.map(&:capitalize).join(', ')
  end
end
