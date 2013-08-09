class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.date :date
      t.string :course_name
      t.integer :par
      t.integer :score
      t.timestamps
    end
  end
end
