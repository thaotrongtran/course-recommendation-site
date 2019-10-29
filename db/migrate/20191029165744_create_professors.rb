class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :prof_name
      t.integer :prof_id
      t.references :review, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
