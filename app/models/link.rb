class Link < ActiveRecord::Base
  attr_accessible :position, :url
  validates :position, presence: true
  validates :url, presence: true

  
  def as_json(options)
    super(only: [:id])
  end
end
