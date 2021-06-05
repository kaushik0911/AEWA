class ProjectStatus < ApplicationRecord
  def self.pending
    self.find_by(name: "Pending")
  end
end
