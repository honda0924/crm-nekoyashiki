FactoryBot.define do
  factory :client do
    client_name1                  {"honda"}
    association :user
  end
end