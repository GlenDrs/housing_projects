require 'spec_helper'
require_relative '../lib/house'

RSpec.describe House do
    it 'initialize length' do
      expect(House.new(length: 1, width: 1, floors: 1, price_m2: 1.0)).to be_a House
  end
end
