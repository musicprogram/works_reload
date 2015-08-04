json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :campaign_name
  json.url campaign_url(campaign, format: :json)
end
