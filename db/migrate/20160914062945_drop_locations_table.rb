class DropLocationsTable < ActiveRecord::Migration[5.0]
  def change
    def up
    drop_table :locations
    end

    def down
    raise ActiveRecord::IrreversibleMigration
    end
  end
end
