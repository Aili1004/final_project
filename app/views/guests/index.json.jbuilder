json.array!(@guests) do |guest|
  json.extract! guest, :id, :full_name, :relationship, :greeting, :is_attending
  json.url guest_url(guest, format: :json)
end
