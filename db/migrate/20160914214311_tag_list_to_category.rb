class TagListToCategory < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :tag_list, :category
  end
end
