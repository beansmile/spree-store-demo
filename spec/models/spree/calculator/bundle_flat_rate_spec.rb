require 'rails_helper'

describe Spree::Calculator::BundleFlatRate, type: :model do
  describe '#compute' do
    let(:calculator) { Spree::Calculator::BundleFlatRate.new(calculable: calculable, preferences: { amount: 5 }) }
    let(:calculable) { create(:spree_promotion_actions_create_adjustment, promotion: promotion) }
    let(:order) { create(:spree_order) }

    let(:promotion) do
      promotion = create(:spree_promotion)
      promotion.rules << rule

      promotion
    end

    let(:rule) do
      rule = create(:spree_promotion_rules_product, preferences: { match_policy: "all" })
      rule.products << product_a
      rule.products << product_b

      rule
    end

    let(:product_a) { create(:spree_product, is_available: true) }
    let(:product_b) { create(:spree_product, is_available: true) }

    let(:product_a_line_item_quantity) { 1 }
    let(:product_b_line_item_quantity) { product_a_line_item_quantity }

    before do
      order.line_items << build(:spree_line_item, variant: product_a.master, quantity: product_a_line_item_quantity)
      order.line_items << build(:spree_line_item, variant: product_b.master, quantity: product_b_line_item_quantity)
    end

    it 'get $5 discount' do
      expect(calculator.compute(order)).to eq(5)
    end

    context 'when has 2 product A and 3 product B' do
      let(:product_a_line_item_quantity) { 2 }
      let(:product_b_line_item_quantity) { 3 }

      it 'get $10 discount' do
        expect(calculator.compute(order)).to eq(10)
      end
    end
  end
end
