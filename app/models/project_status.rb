class ProjectStatus < ApplicationRecord
  def self.completed
    self.find_by(name: "Completed")
  end

  def self.ongoing
    self.find_by(name: "Ongoing")
  end
end
