json.array!(@weddings) do |wedding|
  json.extract! wedding, :id, :bride_name, :groom_name, :love_story, :number_guests, :date, :location, :user_id
  json.url wedding_url(wedding, format: :json)
end
