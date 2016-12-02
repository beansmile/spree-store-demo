# Requirement
#
# We would like a bundle promotion that can be applied to order when the order includes specific products.
# For example, if an order includes products 1 x A and 1 x B then the user get $5.00 off for the order.
# If the user has 2 x A and 2 x B, then the user will get $10.00 off and so on.
# But for order has 1 x A and 2 X B, only $5.00 off for the order.

class Spree::Calculator::BundleFlatRate < Spree::Calculator
  preference :amount, :decimal, default: 0
  preference :currency, :string, default: -> { Spree::Config[:currency] }

  def self.description
    Spree.t(:bundle_flat_rate)
  end

  def compute(object = nil)
    rule = calculable.promotion.promotion_rules.find_by(type: 'Spree::Promotion::Rules::Product')

    if rule && object && preferred_currency.upcase == object.currency.upcase
      bundle_items = object.line_items.joins(:product).where(spree_products: { id: rule.product_ids })
      compute_quantity = bundle_items.any? ? bundle_items.minimum(:quantity) : 0

      preferred_amount * compute_quantity
    else
      0
    end
  end
end
