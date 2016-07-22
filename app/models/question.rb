class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  has_many :answers
  has_many :responses, as: :responseable
end
