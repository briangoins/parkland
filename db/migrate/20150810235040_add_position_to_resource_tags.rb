class AddPositionToResourceTags < ActiveRecord::Migration
  def change
    add_column :resource_tags, :position, :integer
  end
end
