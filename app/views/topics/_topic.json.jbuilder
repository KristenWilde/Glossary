json.extract! topic, :id, :name, :description, :link, :logo, :created_at, :updated_at
json.url topic_url(topic, format: :json)
