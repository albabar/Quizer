json.array!(@topics) do |topic|
  json.extract! topic, :id, :title, :user_id, :summary, :description, :prerequisites_detail, :prerequisites_topic_id, :passmark
  json.url topic_url(topic, format: :json)
end
