class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :evaluation
      t.integer :prof_rating
      t.integer :workload_rating
      t.integer :support_rating
      t.references :professor, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
