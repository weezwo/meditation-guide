class Tag < ActiveRecord::Base
  has_many :resource_tags
  has_many :resources, through: :resource_tags
  def slug
    self.name.downcase.gsub(" ","-")
  end

  def self.unslug(slug)
    self.find_by(name: slug.capitalize.gsub("-"," "))
  end
end
