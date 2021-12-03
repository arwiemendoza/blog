require 'rails_helper'

RSpec.describe Category, type: :model do

  context 'Validations' do
    it '1. Not valid without a name' do

      category = Category.new(name: nil)

      expect(category).to_not be_valid
    end

    it '2. Minimum of 3 characters' do
      category = Category.new(name: "gh")

      expect(category).to_not be_valid
    end

    it '3. Maximum of 10 characters' do
      category = Category.new(name: "qwertyuiopqwer")

      expect(category).to_not be_valid
    end
  end
end
