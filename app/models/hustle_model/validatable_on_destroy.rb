module HustleModel
  module ValidatableOnDestroy
    extend ActiveSupport::Concern

    included do
      before_destroy { throw :abort if invalid?(:destroy) }
    end
  end
end
