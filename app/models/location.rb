class Location < ApplicationRecord
  belongs_to :project

  def address
    [street, city, zipcode].compact.map(&:capitalize).join(', ')
  end
end
