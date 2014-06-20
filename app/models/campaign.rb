class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :donations
  has_many :videos
  has_many :images
end
