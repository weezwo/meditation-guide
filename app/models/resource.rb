class Resource < ActiveRecord::Base
  has_many :resource_tags
  has_many :tags, through: :resource_tags
  
  def self.approved
    where(approved: true)
  end
end
