json.array!(@statuses) do |status|
  json.extract! status, :user_id,  :content
  json.url status_url(status, format: :json)
end
