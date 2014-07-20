class Image < ActiveRecord::Base
  belongs_to :campaign

  validates :url, :presence => true
end
