json.array!(@guest_weddings) do |guest_wedding|
  json.extract! guest_wedding, :id, :wedding_id, :guest_id
  json.url guest_wedding_url(guest_wedding, format: :json)
end
