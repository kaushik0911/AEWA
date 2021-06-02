class ContactU < ApplicationRecord
  enum status: [:unread, :read]
end
