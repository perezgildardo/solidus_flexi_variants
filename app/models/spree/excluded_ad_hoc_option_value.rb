module Spree
  class ExcludedAdHocOptionValue < ActiveRecord::Base
    belongs_to :ad_hoc_variant_exclusion
    belongs_to :ad_hoc_option_value
  end
end
