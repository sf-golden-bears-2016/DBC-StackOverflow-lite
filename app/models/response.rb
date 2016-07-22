class Response < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  belongs_to :responseable, polymorphic: true
end
