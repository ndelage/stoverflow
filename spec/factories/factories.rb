FactoryGirl.define do
  factory :user do
    name "pirate"
    sequence(:email) {|n| "parrot-#{n}@tpb.org" }
    password 'blackbeard' 
  end
end
