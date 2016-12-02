FactoryGirl.define do
  factory :spree_promotion, class: Spree::Promotion do
    sequence(:name) { |n| "Promotion #{n}" }
  end
end
