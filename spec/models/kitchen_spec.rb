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

  describe HustleModel::ValidatableOnDestroy do
    describe 'before_destroy callback' do
      let!(:kitchen) { Kitchen.create!(name: 'foo', address: 'bar') }

      context 'data is valid' do
        it 'destroys and returns destroyed object' do
          expect { expect(kitchen.destroy).to be_truthy }.to change(Kitchen, :count).by(-1)
        end
      end

      context 'data is not valid' do
        it 'not destroys and returns false' do
          kitchen.update!(name: nil)
          expect { expect(kitchen.destroy).to be false }.not_to change(Kitchen, :count)
        end
      end
    end
  end
end
