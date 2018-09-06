class Kitchen < ApplicationRecord
  include HustleModel::AttributesPermittable
  include HustleModel::ValidatableOnDestroy

  validates :name, presence: true, on: :destroy
end
