json.array!(@parties) do |party|
  json.extract! party, :id, :name, :date, :type
  json.url party_url(party, format: :json)
end
