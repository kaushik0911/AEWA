class Project < ApplicationRecord
  belongs_to :project_status
  has_many_attached :images
end
