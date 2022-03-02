require 'spec_helper'
require_relative 'house_spec'
require_relative '../lib/housing_project'

RSpec.describe HousingProject do
  subject(:housing_project) { described_class.new(name: "Adda", interests: 11, delivery_time: Date.today) }
  subject(:housing_project2) { described_class.new(name: "Zeman Zemani", interests: 10, delivery_time: (Date.today + 3)) }
  subject (:house_example) { House.new(length: 2, width: 2, floors: 2, price_m2: 2.0) }
  
  it 'Initialize HousingProject' do
    expect(housing_project).to be_a HousingProject
    expect(housing_project2).to be_a HousingProject
  end

  describe '#name' do
    it 'Testing name attribute' do
      expect(housing_project.name).to eq "Adda"
      expect(housing_project2.name).to eq "Zeman Zemani"
    end
  end

  describe '#interests' do
    it 'Testing interest time attribute' do
      expect(housing_project.interests).to eq 11
      expect(housing_project2.interests).to eq 10
    end
  end

  describe '#delivery_time' do
    it 'Testing delivery_time attribute' do
      expect(housing_project.delivery_time).to eq Date.today
      expect(housing_project2.delivery_time).to eq Date.today + 3
    end
  end

  describe '#houses' do
    it 'Testing houses attribute' do
      expect(housing_project.houses.sample).to eq nil
    end
  end

  describe '#add_house' do
    it 'Testing add_house method' do
      expect(housing_project.add_house(house_example)).to be_a Array
      expect(housing_project.add_house(house_example).sample).to be_a House
    end
  end

  describe '#delete_house.id' do
    it 'Testing delete_house method' do
      expect(housing_project.delete_house(3)).to be_empty
      expect(housing_project2.delete_house(1)).to be_empty
    end
  end

  describe '#house_number' do
    it 'Testing house_number method' do
      expect(housing_project.house_number).to be_a Integer
      expect(housing_project.house_number).to eq 0
      expect(housing_project2.house_number).to be_a Integer
    end
  end

end
