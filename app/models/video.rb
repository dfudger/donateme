class Video < ActiveRecord::Base
  belongs_to :campaign

  def embed
    '//www.youtube.com/embed/'+self.url.split("v=")[1]
  end
end
