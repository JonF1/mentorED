FactoryBot.define do
  factory :conversation do
    id { 1 }
    association :sender, factory: :mentor
    association :receiver, factory: :student
    created_at { "2020-06-29 10:09:15.755385" }
    updated_at { "2020-06-29 10:09:15.755385" }
  end
end
