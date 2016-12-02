FactoryGirl.define do
  factory :spree_stock_item, class: Spree::StockItem do
    stock_location { create(:spree_stock_location) }
  end
end
