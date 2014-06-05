class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :donations
  has_many :videos
end
