json.array!(@contacts) do |contact|
  json.extract! contact, :id, :address_line_1, :address_line_2, :city, :state, :country, :contact_number, :other_details
  json.url contact_url(contact, format: :json)
end
