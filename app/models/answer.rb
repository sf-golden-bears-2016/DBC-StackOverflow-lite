class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  belongs_to :questions
  has_many :responses, as: :responseable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy

  validates :user_id, :question_id, :text, :favorite, presence: true
end
