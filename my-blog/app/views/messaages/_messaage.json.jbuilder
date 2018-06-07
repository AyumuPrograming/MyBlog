json.extract! messaage, :id, :title, :message, :created_at, :updated_at
json.url messaage_url(messaage, format: :json)
