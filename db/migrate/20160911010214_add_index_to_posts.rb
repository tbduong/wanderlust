class AddIndexToPosts < ActiveRecord::Migration[5.0]
  def change
    add_index :posts, :user_id
    add_index :posts, :location_id
  end
end
