class DailyExerciseController < ApplicationController
  def index
    @exercise_infos = ExerciseInfo.all
  end
  def input
    input_data = params["input_data"]
    id = input_data["execise_info_id"]
    @exercise_info = ExerciseInfo.find(id)
    calorie = @exercise_info.calorie
    consumed_minutes = input_data["time"].to_i
    @total_calorie = calorie * consumed_minutes 
  end
end
