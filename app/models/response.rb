class Response < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  belongs_to :responseable, polymorphic: true
  has_many :votes, as: :voteable, dependent: :destroy

  validates :text, :responseable_id, :responseable_type, :user_id, presence: true
end
