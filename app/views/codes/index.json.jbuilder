json.array!(@codes) do |code|
  json.extract! code, :id, :code, :used, :user_id
  json.url code_url(code, format: :json)
end
