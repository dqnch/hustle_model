module HustleModel
  module AttributesPermittable
    extend ActiveSupport::Concern

    module ClassMethods
      def hidden_attributes
        %i[created_at updated_at]
      end

      def permitted_attributes
        column_names.map(&:to_sym).without(*hidden_attributes)
      end
    end

    def hidden_attributes
      self.class.hidden_attributes
    end
  end
end
