class Campaign < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  has_many :donations
  has_many :videos
  has_many :images

  def backers
    self.donations.size
  end

  def pledged
    self.donations.sum(:amount)
  end

  def left
    (self.end.to_date - Date.today.to_date).to_i
  end

  def essay_html(len=nil)
    if len
      markdown = RDiscount.new(self.body.truncate(len))
    elsif
      markdown = RDiscount.new(self.body)
    end

    markdown.to_html
  end

  def progress
    ((self.pledged/(1.0*self.goal))*100).to_i
  end
end
