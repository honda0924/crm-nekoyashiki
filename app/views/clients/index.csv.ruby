require 'csv'

CSV.generate do |csv|
  column_names = %w(client_name1 client_name2 user)
  csv << column_names
  @clients.each do |client|
    column_values = [
      client.client_name1,
      client.client_name2,
      client.user.name
    ]
    csv << column_values
  end
end