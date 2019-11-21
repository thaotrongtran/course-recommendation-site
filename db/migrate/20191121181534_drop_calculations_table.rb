class DropCalculationsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :calculations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
