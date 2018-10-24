FactoryBot.define do
  factory :user do
    sequence(:first_name) {|n| "first_name #{n}"}
    sequence(:last_name) {|n| "last_name #{n}"}
    sequence(:street_address) {|n| "street_address #{n}"}
    sequence(:email_address) {|n| "email_address #{n}"}
    sequence(:password) {|n| "password #{n}"}
    sequence(:role) {|n| "role #{n}"}
    sequence(:city) {|n| "city #{n}"}
    sequence(:zip) {|n| "zip #{n}"}
    sequence(:state_id) {|n| "state_id #{n}"}
  end
end