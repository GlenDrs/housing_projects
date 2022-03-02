require 'spec_helper'
require_relative '../lib/house'

RSpec.describe House do
  subject(:house) { described_class.new(length: 1, width: 1, floors: 1, price_m2: 1.0) }
  subject(:house2) { described_class.new(length: 60, width: 50, floors: 3, price_m2: 350.0) }

  it 'initialize House' do
    expect(house).to be_a House
    expect(house2).to be_a House
  end

  describe '#length' do
    it 'testing length attribute' do
      expect(house.length).to eq 1
      expect(house2.length).to eq 60
    end
  end

  describe '#width' do
    it 'testing width attribute' do
      expect(house.width).to eq 1
      expect(house2.width).to eq 50
    end
  end

  describe '#floors' do
    it 'testing floors attribute' do
      expect(house.floors).to eq 1
      expect(house2.floors).to eq 3
    end
  end

  describe '#created_at' do
    it 'testing created_at attribute' do
      expect(house.created_at).to eq Date.today
    end
  end

  describe '#price_m2' do
    it 'Price for square meter test' do
      expect(house.price_m2).to eq 1.0
      expect(house2.price_m2).to eq 350.0
    end
  end

  describe '#perimetre' do
    it 'The perimeter method test' do
      expect(house.perimeter).to eq 4
      expect(house2.perimeter).to eq 220
    end
  end

  describe '#surface_area' do
    it 'The surface method test' do
      expect(house.surface_area).to eq 1
      expect(house2.surface_area).to eq 9000
    end
  end

  describe '#price' do
    it 'The price of the house test' do
      expect(house.price).to eq 1.0
      expect(house2.price).to eq 3150000.0
    end
  end

  describe '#display_price' do
    it 'Show price in $ method test' do
      expect(house.display_price).to eq("1.0 $")
      expect(house2.display_price).to eq("3150000.0 $")
    end
  end

end
