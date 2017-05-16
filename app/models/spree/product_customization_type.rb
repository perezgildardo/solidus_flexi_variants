module Spree
  class ProductCustomizationType < ActiveRecord::Base
    include Spree::CalculatedAdjustments
    has_and_belongs_to_many :products
    has_many :customizable_product_options, dependent: :destroy
    accepts_nested_attributes_for :customizable_product_options, allow_destroy: true
    validates :name, :presentation, presence: true
  end
end
