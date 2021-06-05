class Project < ApplicationRecord
  belongs_to :project_status
  has_many_attached :images

  scope :pending, -> { where("project_status_id = ?", ProjectStatus.pending.id) }
end
