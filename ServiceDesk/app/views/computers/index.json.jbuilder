json.array!(@computers) do |computer|
  json.extract! computer, :id, :model
  json.url computer_url(computer, format: :json)
end
