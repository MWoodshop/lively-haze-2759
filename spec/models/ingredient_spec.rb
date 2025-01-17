require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_numericality_of(:calories).only_integer }
  end

  describe 'relationships' do
    it { should have_many :dishes_ingredients }
    it { should have_many(:dishes).through(:dishes_ingredients) }
  end
end
