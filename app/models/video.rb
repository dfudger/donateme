class Video < ActiveRecord::Base
  belongs_to :campaign

  validates :url, :presence => true

  def embed
    if self.url.match('//youtu.be/')
      '//www.youtube.com/embed/'+self.url.split(".be/")[1]
    else
      '//www.youtube.com/embed/'+self.url.split("v=")[1]
    end
  end
end
