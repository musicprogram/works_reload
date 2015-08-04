json.array!(@boards) do |board|
  json.extract! board, :id, :date_time, :campaign_id, :brand_id, :country_id, :activity_id, :end_time, :sum_time
  json.url board_url(board, format: :json)
end
