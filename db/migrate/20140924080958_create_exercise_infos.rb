class CreateExerciseInfos < ActiveRecord::Migration
  def change
    create_table :exercise_infos do |t|
      t.string :exercise
      t.integer :calorie

      t.timestamps
    end
  end
end
