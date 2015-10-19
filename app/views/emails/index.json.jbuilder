json.array!(@emails) do |email|
  json.extract! email, :id, :email_address, :wedding_id
  json.url email_url(email, format: :json)
end
