class Project < ApplicationRecord
  belongs_to :project_status
  has_many_attached :images

  scope :ongoing, -> { where("project_status_id = ?", ProjectStatus.ongoing.id) }
  scope :completed, -> { where("project_status_id = ?", ProjectStatus.completed.id) }

  def address
    [street, city, zipcode].compact.join(', ')
  end
end
