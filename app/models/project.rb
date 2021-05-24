class Project < ApplicationRecord
  belongs_to :location
  belongs_to :contract_status
end
