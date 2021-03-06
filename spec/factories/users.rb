FactoryBot.define do
  factory :user, class: User do
    sequence(:first_name) { |n| "first_name #{n}" }
    sequence(:last_name) { |n| "last_name #{n}"}
    sequence(:street_address) { |n| "street_address #{n}" }
    sequence(:email_address) { |n| "user_#{n}@email.com" }
    sequence(:password) { |n| "password #{n}" }
    sequence(:city) { |n| "city #{n}" }
    sequence(:state) { |n| "state #{n}" }
    zip { 12345 }
    role { 0 }
    # enable { true }
  end

  factory :inactive_user, parent: :user do
    sequence(:email_address) { |n| "inactive_user_#{n}@email.com" }
    role { 0 }
    # enable { false }
  end

  factory :merchant, parent: :user do
    sequence(:email_address) { |n| "merchant_#{n}@email.com" }
    role { 1 }
    # enable { true }
  end

  factory :inactive_merchant, parent: :user do
    sequence(:email_address) { |n| "inactive_merchant_#{n}@email.com" }
    role { 1 }
    # enable { false }
  end

  factory :admin, parent: :user do
    sequence(:email_address) { |n| "admin_#{n}@email.com" }
    role { 2 }
    # enable { true  }
  end
end
