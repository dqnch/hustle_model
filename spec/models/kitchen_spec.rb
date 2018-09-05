require 'rails_helper'

RSpec.describe Kitchen, type: :model do
  describe HustleModel::AttributesPermittable do
    describe '.#hidden_attributes' do
      it 'returns hidden attribute names' do
        expect(Kitchen.hidden_attributes).to contain_exactly(:created_at, :updated_at)
      end
    end

    describe '.#permitted_attributes' do
      it 'returns permitted attribute names' do
        expect(Kitchen.permitted_attributes).to contain_exactly(:id, :name, :address)
      end
    end
  end
end
