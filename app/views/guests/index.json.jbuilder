json.array!(@guests) do |guest|
  json.extract! guest, :id, :firstname, :lastname, :table
  json.url guest_url(guest, format: :json)
end
