class TagToTagListInPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :tag, :tag_list
  end
end
