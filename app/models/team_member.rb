class TeamMember < ApplicationRecord
  has_one_attached :image

  enum job_role: ["CEO & Founder", "Co Founder"]

  scope :show, -> { where(display: true) }
end
