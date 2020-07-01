require 'csv'

CSV.generate do |csv|
  column_names = %w(client_name1 client_name2 user)
  csv << column_names
  @clients.each do |client|
    column_values = [
      client.client_name1,
      client.client_name2,
      client.postcode,
      client.add1,
      client.add2,
      client.add3,
      client.tel,
      client.fax,
      client.client_person_in_charge,
      client.mobile,
      client.url,
      client.email,
      client.client_rank_id,
      client.client_cat_id,
      client.closing_day_id,
      client.payment_day_id,
      client.payment_method_id,
      client.user.name
    ]
    csv << column_values
  end
end