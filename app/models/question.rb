class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  has_many :answers
  has_many :responses, as: :responseable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy

  validates :title, :text, :user_id, presence: true
end
