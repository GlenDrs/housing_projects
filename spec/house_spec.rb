require 'spec_helper'
require_relative '../lib/house'

RSpec.describe House do
  subject(:house) { described_class.new(length: 1, width: 1, floors: 1, price_m2: 1.0) }

  it 'initialize House' do
    expect(house).to be_a House
  end

  describe '#length' do
    it 'testing length attribute' do
      expect(house.length).to eq 1
    end
  end

  describe '#width' do
    it 'testing width attribute' do
      expect(house.width).to eq 1
    end
  end

  describe '#floors' do
    it 'testing floors attribute' do
      expect(house.floors).to eq 1
    end
  end

  describe '#created_at' do
    it 'testing created_at attribute' do
      expect(house.created_at).to eq Date.today
  end

  describe '#price_m2' do
    it 'Price for square meter test' do
      expect(house.price_m2).to eq 1.0
    end
  end

  describe '#perimetre' do
    it 'The perimeter method test' do
      expect(house.perimeter).to eq 4
    end
  end

  describe '#surface_area' do
    it 'The surface method test' do
      expect(house.surface_area).to eq 1
    end
  end

  describe '#price' do
    it 'The price of the house test' do
      expect(house.price).to eq 1.0
    end
  end

  describe '#display_price' do
    it 'Show price in $ method test' do
      expect(house.display_price).to eq("1.0 $")
    end
  end

end
