class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  belongs_to :voteable, polymorphic: true
  belongs_to :responseable, polymorphic: true

  validates :user_id, :voteable_id, :voteable_type, presence: true
end
