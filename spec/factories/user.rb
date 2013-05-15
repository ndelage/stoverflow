FactoryGirl.define do
  factory :user do
    sequence(:name)  {|n| "pirate-#{n}"}
    sequence(:email) {|n| "parrot-#{n}@tpb.org" }
    password 'blackbeard'
  end
end
