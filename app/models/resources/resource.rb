class Resource < ActiveRecord::Base
  has_many :resource_collections, dependent: :destroy
  has_many :resource_tags, dependent: :destroy
  has_many :collections, through: :resource_collections
  has_many :tags, through: :resource_tags

  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  scope :person, -> { where(type: 'person') }
  scope :company, -> { where(type: 'company') }

  def tag_list
    self.tags.map { |t| t.title }.join(", ")
  end

  def tag_list=(new_value)
    tag_titles = new_value.split(/,\s+/)
    self.tags = tag_titles.map { |title| Tag.where('title = ?', title).first or Tag.create(:title => title) }
  end
  
  def to_s
    name
  end

  def resource_icon(resource)
    if resource.type = 'Company'
      return "fa-male"
    else
      return "fa-users"
    end
  end
end
