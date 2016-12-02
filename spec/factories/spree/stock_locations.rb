FactoryGirl.define do
  factory :spree_stock_location, class: Spree::StockLocation do
    sequence(:name) { |n| "Stock Location #{n}" }
  end
end
