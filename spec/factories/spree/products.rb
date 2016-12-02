FactoryGirl.define do
  factory :spree_product, class: Spree::Product do
    sequence(:name) { |n| "Product #{n}" }
    price 100
    shipping_category { create(:spree_shipping_category) }

    after(:create) do |product, evaluator|
      if evaluator.is_available
        product.update(available_on: 1.months.ago)
        stock_location = Spree::StockLocation.find_by(propagate_all_variants: true)

        unless stock_location
          stock_location = create(:spree_stock_location)
        end

        stock_movement = stock_location.stock_movements.build(quantity: 99999)
        stock_movement.stock_item = stock_location.set_up_stock_item(product.master)
        stock_movement.save
      end
    end

    transient do
      is_available false
    end
  end
end
