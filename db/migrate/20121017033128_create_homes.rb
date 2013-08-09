class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :index
      t.string :name
      t.date :date
      t.string :course_name
      t.integer :course_par
      t.integer :score
      t.timestamps
    end
  end
end
