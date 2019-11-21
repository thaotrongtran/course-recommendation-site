class AddAvgratingToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :avgrating, :int
  end
end
