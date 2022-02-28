require 'spec_helper'
require_relative '../lib/house'

RSpec.describe House do
  subject(:house) { described_class.new(length: 1, width: 1, floors: 1, price_m2: 1.0) }
  it 'initialize length' do
    expect(house).to be_a House
  end
  context '#perimetre'
  it do
    expect(house.perimeter).to be_a Integer
    expect(house.perimeter).to eq 4
  end

  context '#surface_area'
  it do
    expect(house.surface_area).to be_a Integer
    expect(house.surface_area).to eq 1
  end

  context '#price'
  it do
    expect(house.price).to be_a Float
    expect(house.price).to eq 1.0
  end

  it '#display_price' do
    expect(house.display_price).to be_a String
    expect(house.display_price).to eq("1.0 $")
  end
end
