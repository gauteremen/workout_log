class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :ses
      t.integer :reps
      t.references :workout, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
