class Project < ApplicationRecord
  has_one :location
  belongs_to :project_status

  accepts_nested_attributes_for :location
end
