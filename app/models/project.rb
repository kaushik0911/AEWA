class Project < ApplicationRecord
  belongs_to :location
  belongs_to :project_status
end
