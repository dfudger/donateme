class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign

  validates :amount, :presence => true
end
