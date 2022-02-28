require 'spec_helper'
require_relative '../lib/house'

RSpec.describe House do
  subject(:house) { described_class.new(length: 1, width: 1, floors: 1, price_m2: 1.0) }
  it 'initialize length' do
    expect(house).to be_a House
  end
  context '#perimetre'
  it do
    expect(house.perimeter).not_to be_empty
    expect(house.perimeter).to eq 4
  end
end
