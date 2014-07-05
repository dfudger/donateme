class Video < ActiveRecord::Base
  belongs_to :campaign

  def embed
    if self.url.match('//youtu.be/')
      '//www.youtube.com/embed/'+self.url.split(".be/")[1]
    else
      '//www.youtube.com/embed/'+self.url.split("v=")[1]
    end
  end
end
