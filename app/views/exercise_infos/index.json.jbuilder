json.array!(@exercise_infos) do |exercise_info|
  json.extract! exercise_info, :id, :exercise, :calorie
  json.url exercise_info_url(exercise_info, format: :json)
end
