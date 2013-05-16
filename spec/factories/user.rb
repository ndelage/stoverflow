FactoryGirl.define do
  factory :user do
    sequence(:handle)  {|n| "pirate-#{n}"}
    sequence(:email) {|n| "parrot-#{n}@tpb.org" }
    password 'blackbeard'
  end
end
