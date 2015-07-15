class ResourceTag < ActiveRecord::Base
  belongs_to :resource
  belongs_to :tag

  acts_as_list scope: :resource
end
