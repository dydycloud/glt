# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :intro_pg do
    titre "MyString"
    association :cover_top
    association :cover_bottom
    association :about
  end
end
