json.array! @clients do |client|
  json.id client.id
  json.client_name1 client.client_name1
  json.client_name2 client.client_name2
end
