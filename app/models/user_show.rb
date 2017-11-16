class UserShow < ApplicationRecord
  belongs_to :user
  belongs_to :show
  validates_uniqueness_of :id, scope: [:user_id, :show_id]
end
