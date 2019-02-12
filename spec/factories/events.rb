FactoryBot.define do
  factory :event do
    start_date { "2019-02-11 14:26:34" }
    duration { 1 }
    title { "MyString" }
    description { "MyText" }
    price { 1 }
    location { "MyString" }
    user_id {All.sample}
  end
end
