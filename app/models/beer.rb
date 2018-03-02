class Beer < ApplicationRecord

  scope :not_deleted, -> { where(deleted_at: nil) }
end
