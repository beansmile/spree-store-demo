FactoryGirl.define do
  factory :spree_shipping_category, class: Spree::ShippingCategory do
    sequence(:name) { |n| "Shipping Category #{n}" }
  end
end
