FactoryGirl.define do
  factory :user do
    email "ticketee@email.com"
    password "password"
    password_confirmation "password"
  end

  factory :confirmed_user, :class => :user do

    email "ticketee@email.com"
    password "password"
    password_confirmation "password"

    after_create do |user|
      user.confirm!
    end
  end

  factory :admin_user, :class => :user do
    
    email "ticketee@email.com"
    password "password"
    password_confirmation "password"

    after_create do |user|
      user.confirm!
      user.update_attribute(:admin, true)
    end
  end
end